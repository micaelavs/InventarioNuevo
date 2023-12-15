using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ClassServicios
{
    public class Persistencia
    {
        private const string NOMBRE_BASE = "conexion";

        //private string CadenaC = @"Data Source=DESKTOP-7Q1471A;Initial Catalog=Inventario_para_Archivo2;Integrated Security=True"; //ESTO YA NO VA XQ TOMA DEL CONFIG AHORA
        //private SqlConnection Cnn = new SqlConnection(@"Data Source=DESKTOP-7Q1471A;Initial Catalog=Inventario_para_Archivo2;Integrated Security=True");
        private readonly string CadenaC = ConfigurationManager.ConnectionStrings[NOMBRE_BASE].ConnectionString;
        private readonly SqlConnection Cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[NOMBRE_BASE].ConnectionString);
        //*****************para restore y buckup********************

        private readonly string CadenaC2 = ConfigurationManager.ConnectionStrings["restore"].ConnectionString;
        private readonly SqlConnection Cnn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["restore"].ConnectionString);

        //**********************************************************
        private SqlTransaction Tranx;

        private SqlCommand Cmd;

        public DataSet Leer(string consulta, Hashtable hdatos)
        {
            DataSet Ds = new DataSet();
            Cmd = new SqlCommand
            {
                Connection = Cnn,
                CommandText = consulta,
                CommandType = CommandType.StoredProcedure
            };

            if ((hdatos != null))
            {
                foreach (string dato in hdatos.Keys)
                {
                    Cmd.Parameters.AddWithValue(dato, hdatos[dato]); 
                }
            }

            SqlDataAdapter Adaptador = new SqlDataAdapter(Cmd);
            Adaptador.Fill(Ds);
            return Ds;
        }

        public void Escribir(string consulta, Hashtable hdatos)
        {
            if (Cnn.State == ConnectionState.Closed)
            {
                Cnn.ConnectionString = CadenaC;
                Cnn.Open();
            }

            try
            {
                Tranx = Cnn.BeginTransaction();
                Cmd = new SqlCommand
                {
                    Connection = Cnn,
                    CommandText = consulta,
                    Transaction = Tranx,
                    CommandType = CommandType.StoredProcedure
                };

                if ((hdatos != null))
                {
                    foreach (string dato in hdatos.Keys)
                    {
                       
                        Cmd.Parameters.AddWithValue(dato, hdatos[dato]);
                    }
                }

                int respuesta = Cmd.ExecuteNonQuery();
                Tranx.Commit();
               // return true;
            }
            /*catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }*/
            catch (Exception ex)
            {
                Tranx.Rollback();
                throw ex;
                //return false;
            }
            finally
            {
                Cnn.Close();
            }
        }

        public void EscribirQueryRestore(string consulta)
        {
            if (Cnn2.State == ConnectionState.Closed)
            {
                Cnn2.ConnectionString = CadenaC2;
                Cnn2.Open();
            }

            try
            {
                Cmd = new SqlCommand
                {
                    Connection = Cnn2,
                    CommandText = consulta,
                    CommandType = CommandType.Text
                };

                
                int respuesta = Cmd.ExecuteNonQuery();
                //return true;
            }
            /*catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }*/
            catch (Exception ex)
            {
                throw ex;
                //return false;
            }
            finally
            {
                Cnn.Close();
            }
        }

        public void EscribirST(string consulta, Hashtable hdatos)
        {
            if (Cnn.State == ConnectionState.Closed)
            {
                Cnn.ConnectionString = CadenaC;
                Cnn.Open();
            }

            try
            {
                Cmd = new SqlCommand
                {
                    Connection = Cnn,
                    CommandText = consulta,
                    Transaction = Tranx,
                    CommandType = CommandType.StoredProcedure
                };

                if ((hdatos != null))
                {
                    foreach (string dato in hdatos.Keys)
                    {
                        //cargo los parametros que le estoy pasando con la Hash
                        Cmd.Parameters.AddWithValue(dato, hdatos[dato]);
                    }
                }

                int respuesta = Cmd.ExecuteNonQuery();
                //return true;
            }
            /*catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }*/
            catch (Exception ex)
            {
                throw ex;
                //return false;
            }
            finally
            {
                Cnn.Close();
            }
        }
        public int EscribirReturnIndice(string consulta, Hashtable hdatos)
        {
            if (Cnn.State == ConnectionState.Closed)
            {
                Cnn.ConnectionString = CadenaC;
                Cnn.Open();
            }

            try
            {
                Tranx = Cnn.BeginTransaction();
                Cmd = new SqlCommand
                {
                    Connection = Cnn,
                    CommandText = consulta,
                    CommandType = CommandType.StoredProcedure,
                    Transaction = Tranx
                };

                if (hdatos != null)
                {
                    foreach (string dato in hdatos.Keys)
                    {
                        //cargo los parametros que le estoy pasando con la Hash
                        Cmd.Parameters.AddWithValue(dato, hdatos[dato]);
                    }
                }

                var respuesta = Cmd.ExecuteScalar();
                Tranx.Commit();
                return (int)respuesta;
            }
            /*catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
                return -1;
            }*/
            catch (Exception ex)
            {
                Tranx.Rollback();
                //return -1;
                throw ex;
            }
            finally
            {
                Cnn.Close();
            }
        }

        public bool EscribirArray(string consulta, ArrayList data) //esta al final no la use
        {
            if (Cnn.State == ConnectionState.Closed)
            {
                Cnn.ConnectionString = CadenaC;
                Cnn.Open();
            }

            try
            {
                Tranx = Cnn.BeginTransaction();
                Cmd = new SqlCommand
                {
                    Connection = Cnn,
                    CommandText = consulta,
                    CommandType = CommandType.StoredProcedure,
                    Transaction = Tranx
                };

                if (data != null)
                {
                    foreach (SqlParameter dato in data)
                    {
                        //cargo los parametros que le estoy pasando con el arraylist
                        Cmd.Parameters.AddWithValue(dato.ParameterName, dato.Value);
                    }
                }

                int respuesta = Cmd.ExecuteNonQuery();
                Tranx.Commit();
                return true;
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            catch (Exception ex)
            {
                Tranx.Rollback();
                return false;
            }
            finally
            { Cnn.Close(); }
        }
    }
}
