﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebServicesReservas.ServicioSopListaReservas {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.CollectionDataContractAttribute(Name="ArrayOfTblListaReservas", Namespace="http://tempuri.org/", ItemName="tblListaReservas")]
    [System.SerializableAttribute()]
    public class ArrayOfTblListaReservas : System.Collections.Generic.List<WebServicesReservas.ServicioSopListaReservas.tblListaReservas> {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="tblListaReservas", Namespace="http://tempuri.org/")]
    [System.SerializableAttribute()]
    public partial class tblListaReservas : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string NombreField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string ApellidoField;
        
        private System.DateTime FechaInicioField;
        
        private System.DateTime FechaFinalField;
        
        private int CostoField;
        
        private int NumeroHabitacionField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string TipohabitacionField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false)]
        public string Nombre {
            get {
                return this.NombreField;
            }
            set {
                if ((object.ReferenceEquals(this.NombreField, value) != true)) {
                    this.NombreField = value;
                    this.RaisePropertyChanged("Nombre");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=1)]
        public string Apellido {
            get {
                return this.ApellidoField;
            }
            set {
                if ((object.ReferenceEquals(this.ApellidoField, value) != true)) {
                    this.ApellidoField = value;
                    this.RaisePropertyChanged("Apellido");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(IsRequired=true, Order=2)]
        public System.DateTime FechaInicio {
            get {
                return this.FechaInicioField;
            }
            set {
                if ((this.FechaInicioField.Equals(value) != true)) {
                    this.FechaInicioField = value;
                    this.RaisePropertyChanged("FechaInicio");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(IsRequired=true, Order=3)]
        public System.DateTime FechaFinal {
            get {
                return this.FechaFinalField;
            }
            set {
                if ((this.FechaFinalField.Equals(value) != true)) {
                    this.FechaFinalField = value;
                    this.RaisePropertyChanged("FechaFinal");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(IsRequired=true, Order=4)]
        public int Costo {
            get {
                return this.CostoField;
            }
            set {
                if ((this.CostoField.Equals(value) != true)) {
                    this.CostoField = value;
                    this.RaisePropertyChanged("Costo");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(IsRequired=true, Order=5)]
        public int NumeroHabitacion {
            get {
                return this.NumeroHabitacionField;
            }
            set {
                if ((this.NumeroHabitacionField.Equals(value) != true)) {
                    this.NumeroHabitacionField = value;
                    this.RaisePropertyChanged("NumeroHabitacion");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=6)]
        public string Tipohabitacion {
            get {
                return this.TipohabitacionField;
            }
            set {
                if ((object.ReferenceEquals(this.TipohabitacionField, value) != true)) {
                    this.TipohabitacionField = value;
                    this.RaisePropertyChanged("Tipohabitacion");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServicioSopListaReservas.ListaReservasWebSoap")]
    public interface ListaReservasWebSoap {
        
        // CODEGEN: Se está generando un contrato de mensaje, ya que el nombre de elemento ListaReservasGeneralesResult del espacio de nombres http://tempuri.org/ no está marcado para aceptar valores nil.
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ListaReservasGenerales", ReplyAction="*")]
        WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesResponse ListaReservasGenerales(WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ListaReservasGenerales", ReplyAction="*")]
        System.Threading.Tasks.Task<WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesResponse> ListaReservasGeneralesAsync(WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesRequest request);
        
        // CODEGEN: Se está generando un contrato de mensaje, ya que el nombre de elemento Nombre del espacio de nombres http://tempuri.org/ no está marcado para aceptar valores nil.
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ListaReservasClientes", ReplyAction="*")]
        WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesResponse ListaReservasClientes(WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ListaReservasClientes", ReplyAction="*")]
        System.Threading.Tasks.Task<WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesResponse> ListaReservasClientesAsync(WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class ListaReservasGeneralesRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="ListaReservasGenerales", Namespace="http://tempuri.org/", Order=0)]
        public WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesRequestBody Body;
        
        public ListaReservasGeneralesRequest() {
        }
        
        public ListaReservasGeneralesRequest(WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute()]
    public partial class ListaReservasGeneralesRequestBody {
        
        public ListaReservasGeneralesRequestBody() {
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class ListaReservasGeneralesResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="ListaReservasGeneralesResponse", Namespace="http://tempuri.org/", Order=0)]
        public WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesResponseBody Body;
        
        public ListaReservasGeneralesResponse() {
        }
        
        public ListaReservasGeneralesResponse(WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class ListaReservasGeneralesResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public WebServicesReservas.ServicioSopListaReservas.ArrayOfTblListaReservas ListaReservasGeneralesResult;
        
        public ListaReservasGeneralesResponseBody() {
        }
        
        public ListaReservasGeneralesResponseBody(WebServicesReservas.ServicioSopListaReservas.ArrayOfTblListaReservas ListaReservasGeneralesResult) {
            this.ListaReservasGeneralesResult = ListaReservasGeneralesResult;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class ListaReservasClientesRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="ListaReservasClientes", Namespace="http://tempuri.org/", Order=0)]
        public WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesRequestBody Body;
        
        public ListaReservasClientesRequest() {
        }
        
        public ListaReservasClientesRequest(WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class ListaReservasClientesRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string Nombre;
        
        public ListaReservasClientesRequestBody() {
        }
        
        public ListaReservasClientesRequestBody(string Nombre) {
            this.Nombre = Nombre;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class ListaReservasClientesResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="ListaReservasClientesResponse", Namespace="http://tempuri.org/", Order=0)]
        public WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesResponseBody Body;
        
        public ListaReservasClientesResponse() {
        }
        
        public ListaReservasClientesResponse(WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class ListaReservasClientesResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public WebServicesReservas.ServicioSopListaReservas.ArrayOfTblListaReservas ListaReservasClientesResult;
        
        public ListaReservasClientesResponseBody() {
        }
        
        public ListaReservasClientesResponseBody(WebServicesReservas.ServicioSopListaReservas.ArrayOfTblListaReservas ListaReservasClientesResult) {
            this.ListaReservasClientesResult = ListaReservasClientesResult;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ListaReservasWebSoapChannel : WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ListaReservasWebSoapClient : System.ServiceModel.ClientBase<WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoap>, WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoap {
        
        public ListaReservasWebSoapClient() {
        }
        
        public ListaReservasWebSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ListaReservasWebSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ListaReservasWebSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ListaReservasWebSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesResponse WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoap.ListaReservasGenerales(WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesRequest request) {
            return base.Channel.ListaReservasGenerales(request);
        }
        
        public WebServicesReservas.ServicioSopListaReservas.ArrayOfTblListaReservas ListaReservasGenerales() {
            WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesRequest inValue = new WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesRequest();
            inValue.Body = new WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesRequestBody();
            WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesResponse retVal = ((WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoap)(this)).ListaReservasGenerales(inValue);
            return retVal.Body.ListaReservasGeneralesResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        System.Threading.Tasks.Task<WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesResponse> WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoap.ListaReservasGeneralesAsync(WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesRequest request) {
            return base.Channel.ListaReservasGeneralesAsync(request);
        }
        
        public System.Threading.Tasks.Task<WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesResponse> ListaReservasGeneralesAsync() {
            WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesRequest inValue = new WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesRequest();
            inValue.Body = new WebServicesReservas.ServicioSopListaReservas.ListaReservasGeneralesRequestBody();
            return ((WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoap)(this)).ListaReservasGeneralesAsync(inValue);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesResponse WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoap.ListaReservasClientes(WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesRequest request) {
            return base.Channel.ListaReservasClientes(request);
        }
        
        public WebServicesReservas.ServicioSopListaReservas.ArrayOfTblListaReservas ListaReservasClientes(string Nombre) {
            WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesRequest inValue = new WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesRequest();
            inValue.Body = new WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesRequestBody();
            inValue.Body.Nombre = Nombre;
            WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesResponse retVal = ((WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoap)(this)).ListaReservasClientes(inValue);
            return retVal.Body.ListaReservasClientesResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        System.Threading.Tasks.Task<WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesResponse> WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoap.ListaReservasClientesAsync(WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesRequest request) {
            return base.Channel.ListaReservasClientesAsync(request);
        }
        
        public System.Threading.Tasks.Task<WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesResponse> ListaReservasClientesAsync(string Nombre) {
            WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesRequest inValue = new WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesRequest();
            inValue.Body = new WebServicesReservas.ServicioSopListaReservas.ListaReservasClientesRequestBody();
            inValue.Body.Nombre = Nombre;
            return ((WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoap)(this)).ListaReservasClientesAsync(inValue);
        }
    }
}
