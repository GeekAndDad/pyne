################################################
#                 WARNING!                     #
# This file has been auto-generated by xdress. #
# Do not modify!!!                             #
#                                              #
#                                              #
#                    Come on, guys. I mean it! #
################################################
"""
"""
cimport dtypes
cimport numpy as np
cimport tally
from libc.stdlib cimport free
from libcpp.string cimport string as std_string
from libcpp.vector cimport vector as cpp_vector
from pyne cimport cpp_tally

import dtypes
import numpy as np

np.import_array()



cdef class Tally:
    """
    
    Attributes
    ----------
    entity_type (std::string) : fundamental tally variables  the
        type of entity (volume,surface)
    entity_name (std::string) : the name of the entity (optional)
    particle_name (std::string) : particle name string
    tally_type (std::string) : type of tally flux or current
    tally_name (std::string) : name of the tally
    entity_id (int) : id number of the entity being tallied upon
    entity_size (double) : the physical size of the entity
    
    
    Methods
    -------
    Tally
    ~Tally
    from_hdf5
    write_hdf5
    
    Notes
    -----
    This class was defined in tally.h
    
    The class is found in the "pyne" namespace"""



    # constuctors
    def __cinit__(self, *args, **kwargs):
        self._inst = NULL
        self._free_inst = True

        # cached property defaults


    def _tally_tally_0(self, ):
        """Tally(self, )
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        
        
        Parameters
        ----------
        None
        
        Returns
        -------
        None
        
        ################################################################
        
        empty constructor   Constructor from passed in vars
        
        Parameters
        ----------
        entity_name : std::string
        
        entity_type : std::string
        
        entity_size : double
        
        entity : int
        
        particle_name : std::string
        
        type : std::string
        
        tally_name : std::string
        
        Returns
        -------
        None
        
        """
        self._inst = new cpp_tally.Tally()
    
    
    def _tally_tally_1(self, type, part_name, ent, ent_type, ent_name, tal_name='', size=0.0):
        """Tally(self, type, part_name, ent, ent_type, ent_name, tal_name='', size=0.0)
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        
        
        Parameters
        ----------
        None
        
        Returns
        -------
        None
        
        ################################################################
        
        empty constructor   Constructor from passed in vars
        
        Parameters
        ----------
        entity_name : std::string
        
        entity_type : std::string
        
        entity_size : double
        
        entity : int
        
        particle_name : std::string
        
        type : std::string
        
        tally_name : std::string
        
        Returns
        -------
        None
        
        """
        cdef char * type_proxy
        cdef char * part_name_proxy
        cdef char * ent_type_proxy
        cdef char * ent_name_proxy
        cdef char * tal_name_proxy
        type_bytes = type.encode()
        part_name_bytes = part_name.encode()
        ent_type_bytes = ent_type.encode()
        ent_name_bytes = ent_name.encode()
        tal_name_bytes = tal_name.encode()
        self._inst = new cpp_tally.Tally(std_string(<char *> type_bytes), std_string(<char *> part_name_bytes), <int> ent, std_string(<char *> ent_type_bytes), std_string(<char *> ent_name_bytes), std_string(<char *> tal_name_bytes), <double> size)
    
    
    _tally_tally_0_argtypes = frozenset()
    _tally_tally_1_argtypes = frozenset(((0, str), (1, str), (2, int), (3, str), (4, str), (5, str), (6, float), ("type", str), ("part_name", str), ("ent", int), ("ent_type", str), ("ent_name", str), ("tal_name", str), ("size", float)))
    
    def __init__(self, *args, **kwargs):
        """Tally(self, type, part_name, ent, ent_type, ent_name, tal_name='', size=0.0)
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        
        
        Parameters
        ----------
        None
        
        Returns
        -------
        None
        
        ################################################################
        
        empty constructor   Constructor from passed in vars
        
        Parameters
        ----------
        entity_name : std::string
        
        entity_type : std::string
        
        entity_size : double
        
        entity : int
        
        particle_name : std::string
        
        type : std::string
        
        tally_name : std::string
        
        Returns
        -------
        None
        
        """
        types = set([(i, type(a)) for i, a in enumerate(args)])
        types.update([(k, type(v)) for k, v in kwargs.items()])
        # vtable-like dispatch for exactly matching types
        if types <= self._tally_tally_0_argtypes:
            self._tally_tally_0(*args, **kwargs)
            return
        if types <= self._tally_tally_1_argtypes:
            self._tally_tally_1(*args, **kwargs)
            return
        # duck-typed dispatch based on whatever works!
        try:
            self._tally_tally_0(*args, **kwargs)
            return
        except (RuntimeError, TypeError, NameError):
            pass
        try:
            self._tally_tally_1(*args, **kwargs)
            return
        except (RuntimeError, TypeError, NameError):
            pass
        raise RuntimeError('method __init__() could not be dispatched')
    
    def __dealloc__(self):
        if self._free_inst and self._inst is not NULL:
            free(self._inst)

    # attributes
    property entity_id:
        """no docstring for entity_id, please file a bug report!"""
        def __get__(self):
            return int((<cpp_tally.Tally *> self._inst).entity_id)
    
        def __set__(self, value):
            (<cpp_tally.Tally *> self._inst).entity_id = <int> value
    
    
    property entity_name:
        """no docstring for entity_name, please file a bug report!"""
        def __get__(self):
            return bytes(<char *> (<cpp_tally.Tally *> self._inst).entity_name.c_str()).decode()
    
        def __set__(self, value):
            cdef char * value_proxy
            value_bytes = value.encode()
            (<cpp_tally.Tally *> self._inst).entity_name = std_string(<char *> value_bytes)
    
    
    property entity_size:
        """no docstring for entity_size, please file a bug report!"""
        def __get__(self):
            return float((<cpp_tally.Tally *> self._inst).entity_size)
    
        def __set__(self, value):
            (<cpp_tally.Tally *> self._inst).entity_size = <double> value
    
    
    property entity_type:
        """no docstring for entity_type, please file a bug report!"""
        def __get__(self):
            return bytes(<char *> (<cpp_tally.Tally *> self._inst).entity_type.c_str()).decode()
    
        def __set__(self, value):
            cdef char * value_proxy
            value_bytes = value.encode()
            (<cpp_tally.Tally *> self._inst).entity_type = std_string(<char *> value_bytes)
    
    
    property particle_name:
        """no docstring for particle_name, please file a bug report!"""
        def __get__(self):
            return bytes(<char *> (<cpp_tally.Tally *> self._inst).particle_name.c_str()).decode()
    
        def __set__(self, value):
            cdef char * value_proxy
            value_bytes = value.encode()
            (<cpp_tally.Tally *> self._inst).particle_name = std_string(<char *> value_bytes)
    
    
    property tally_name:
        """no docstring for tally_name, please file a bug report!"""
        def __get__(self):
            return bytes(<char *> (<cpp_tally.Tally *> self._inst).tally_name.c_str()).decode()
    
        def __set__(self, value):
            cdef char * value_proxy
            value_bytes = value.encode()
            (<cpp_tally.Tally *> self._inst).tally_name = std_string(<char *> value_bytes)
    
    
    property tally_type:
        """no docstring for tally_type, please file a bug report!"""
        def __get__(self):
            return bytes(<char *> (<cpp_tally.Tally *> self._inst).tally_type.c_str()).decode()
    
        def __set__(self, value):
            cdef char * value_proxy
            value_bytes = value.encode()
            (<cpp_tally.Tally *> self._inst).tally_type = std_string(<char *> value_bytes)
    
    
    # methods
    def _tally_collection_from_hdf5_0(self, filename, datapath):
        """collection_from_hdf5(self, filename, datapath)
        no docstring for collection_from_hdf5, please file a bug report!"""
        cdef char * filename_proxy
        cdef char * datapath_proxy
        cdef cpp_vector[cpp_tally.Tally] rtnval
        
        cdef np.npy_intp rtnval_proxy_shape[1]
        filename_bytes = filename.encode()
        datapath_bytes = datapath.encode()
        rtnval = (<cpp_tally.Tally *> self._inst).collection_from_hdf5(std_string(<char *> filename_bytes), std_string(<char *> datapath_bytes))
        rtnval_proxy_shape[0] = <np.npy_intp> rtnval.size()
        rtnval_proxy = np.PyArray_SimpleNewFromData(1, rtnval_proxy_shape, dtypes.xd_tally.num, &rtnval[0])
        rtnval_proxy = np.PyArray_Copy(rtnval_proxy)
        return rtnval_proxy
    
    
    def _tally_collection_from_hdf5_1(self, filename, datapath):
        """collection_from_hdf5(self, filename, datapath)
        no docstring for collection_from_hdf5, please file a bug report!"""
        cdef char * filename_proxy
        cdef char * datapath_proxy
        cdef cpp_vector[cpp_tally.Tally] rtnval
        
        cdef np.npy_intp rtnval_proxy_shape[1]
        filename_bytes = filename.encode()
        datapath_bytes = datapath.encode()
        rtnval = (<cpp_tally.Tally *> self._inst).collection_from_hdf5(<char *> filename_bytes, <char *> datapath_bytes)
        rtnval_proxy_shape[0] = <np.npy_intp> rtnval.size()
        rtnval_proxy = np.PyArray_SimpleNewFromData(1, rtnval_proxy_shape, dtypes.xd_tally.num, &rtnval[0])
        rtnval_proxy = np.PyArray_Copy(rtnval_proxy)
        return rtnval_proxy
    
    
    _tally_collection_from_hdf5_0_argtypes = frozenset(((0, str), (1, str), ("filename", str), ("datapath", str)))
    _tally_collection_from_hdf5_1_argtypes = frozenset(((0, str), (1, str), ("filename", str), ("datapath", str)))
    
    def collection_from_hdf5(self, *args, **kwargs):
        """collection_from_hdf5(self, filename, datapath)
        no docstring for collection_from_hdf5, please file a bug report!"""
        types = set([(i, type(a)) for i, a in enumerate(args)])
        types.update([(k, type(v)) for k, v in kwargs.items()])
        # vtable-like dispatch for exactly matching types
        if types <= self._tally_collection_from_hdf5_0_argtypes:
            return self._tally_collection_from_hdf5_0(*args, **kwargs)
        if types <= self._tally_collection_from_hdf5_1_argtypes:
            return self._tally_collection_from_hdf5_1(*args, **kwargs)
        # duck-typed dispatch based on whatever works!
        try:
            return self._tally_collection_from_hdf5_0(*args, **kwargs)
        except (RuntimeError, TypeError, NameError):
            pass
        try:
            return self._tally_collection_from_hdf5_1(*args, **kwargs)
        except (RuntimeError, TypeError, NameError):
            pass
        raise RuntimeError('method collection_from_hdf5() could not be dispatched')
    
    def _tally_from_hdf5_0(self, filename, datapath, row=-1):
        """from_hdf5(self, filename, datapath, row=-1)
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        Main read tally method
        
        Parameters
        ----------
        row : int
        
        datapath : std::string
        
        filename : std::string
        
        Returns
        -------
        res1 : void
        
        ################################################################
        
        default destructor   Dummy read method wrapper around c style
        strings
        
        Parameters
        ----------
        row : int
        
        datapath : char *
        
        filename : char *
        
        Returns
        -------
        res1 : void
        
        """
        cdef char * filename_proxy
        cdef char * datapath_proxy
        filename_bytes = filename.encode()
        datapath_bytes = datapath.encode()
        (<cpp_tally.Tally *> self._inst).from_hdf5(std_string(<char *> filename_bytes), std_string(<char *> datapath_bytes), <int> row)
    
    
    def _tally_from_hdf5_1(self, filename, datapath, row=-1):
        """from_hdf5(self, filename, datapath, row=-1)
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        Main read tally method
        
        Parameters
        ----------
        row : int
        
        datapath : std::string
        
        filename : std::string
        
        Returns
        -------
        res1 : void
        
        ################################################################
        
        default destructor   Dummy read method wrapper around c style
        strings
        
        Parameters
        ----------
        row : int
        
        datapath : char *
        
        filename : char *
        
        Returns
        -------
        res1 : void
        
        """
        cdef char * filename_proxy
        cdef char * datapath_proxy
        filename_bytes = filename.encode()
        datapath_bytes = datapath.encode()
        (<cpp_tally.Tally *> self._inst).from_hdf5(<char *> filename_bytes, <char *> datapath_bytes, <int> row)
    
    
    _tally_from_hdf5_0_argtypes = frozenset(((0, str), (1, str), (2, int), ("filename", str), ("datapath", str), ("row", int)))
    _tally_from_hdf5_1_argtypes = frozenset(((0, str), (1, str), (2, int), ("filename", str), ("datapath", str), ("row", int)))
    
    def from_hdf5(self, *args, **kwargs):
        """from_hdf5(self, filename, datapath, row=-1)
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        Main read tally method
        
        Parameters
        ----------
        row : int
        
        datapath : std::string
        
        filename : std::string
        
        Returns
        -------
        res1 : void
        
        ################################################################
        
        default destructor   Dummy read method wrapper around c style
        strings
        
        Parameters
        ----------
        row : int
        
        datapath : char *
        
        filename : char *
        
        Returns
        -------
        res1 : void
        
        """
        types = set([(i, type(a)) for i, a in enumerate(args)])
        types.update([(k, type(v)) for k, v in kwargs.items()])
        # vtable-like dispatch for exactly matching types
        if types <= self._tally_from_hdf5_0_argtypes:
            return self._tally_from_hdf5_0(*args, **kwargs)
        if types <= self._tally_from_hdf5_1_argtypes:
            return self._tally_from_hdf5_1(*args, **kwargs)
        # duck-typed dispatch based on whatever works!
        try:
            return self._tally_from_hdf5_0(*args, **kwargs)
        except (RuntimeError, TypeError, NameError):
            pass
        try:
            return self._tally_from_hdf5_1(*args, **kwargs)
        except (RuntimeError, TypeError, NameError):
            pass
        raise RuntimeError('method from_hdf5() could not be dispatched')
    
    def _tally_write_hdf5_0(self, filename, datapath):
        """write_hdf5(self, filename, datapath)
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        Dummy write method wrapper around c style strings
        
        Parameters
        ----------
        datapath : char *
        
        filename : char *
        
        Returns
        -------
        res1 : void
        
        ################################################################
        
        Main write tally method
        
        Parameters
        ----------
        datapath : std::string
        
        filename : std::string
        
        Returns
        -------
        res1 : void
        
        """
        cdef char * filename_proxy
        cdef char * datapath_proxy
        filename_bytes = filename.encode()
        datapath_bytes = datapath.encode()
        (<cpp_tally.Tally *> self._inst).write_hdf5(std_string(<char *> filename_bytes), std_string(<char *> datapath_bytes))
    
    
    def _tally_write_hdf5_1(self, filename, datapath):
        """write_hdf5(self, filename, datapath)
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        Dummy write method wrapper around c style strings
        
        Parameters
        ----------
        datapath : char *
        
        filename : char *
        
        Returns
        -------
        res1 : void
        
        ################################################################
        
        Main write tally method
        
        Parameters
        ----------
        datapath : std::string
        
        filename : std::string
        
        Returns
        -------
        res1 : void
        
        """
        cdef char * filename_proxy
        cdef char * datapath_proxy
        filename_bytes = filename.encode()
        datapath_bytes = datapath.encode()
        (<cpp_tally.Tally *> self._inst).write_hdf5(<char *> filename_bytes, <char *> datapath_bytes)
    
    
    _tally_write_hdf5_0_argtypes = frozenset(((0, str), (1, str), ("filename", str), ("datapath", str)))
    _tally_write_hdf5_1_argtypes = frozenset(((0, str), (1, str), ("filename", str), ("datapath", str)))
    
    def write_hdf5(self, *args, **kwargs):
        """write_hdf5(self, filename, datapath)
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        Dummy write method wrapper around c style strings
        
        Parameters
        ----------
        datapath : char *
        
        filename : char *
        
        Returns
        -------
        res1 : void
        
        ################################################################
        
        Main write tally method
        
        Parameters
        ----------
        datapath : std::string
        
        filename : std::string
        
        Returns
        -------
        res1 : void
        
        """
        types = set([(i, type(a)) for i, a in enumerate(args)])
        types.update([(k, type(v)) for k, v in kwargs.items()])
        # vtable-like dispatch for exactly matching types
        if types <= self._tally_write_hdf5_0_argtypes:
            return self._tally_write_hdf5_0(*args, **kwargs)
        if types <= self._tally_write_hdf5_1_argtypes:
            return self._tally_write_hdf5_1(*args, **kwargs)
        # duck-typed dispatch based on whatever works!
        try:
            return self._tally_write_hdf5_0(*args, **kwargs)
        except (RuntimeError, TypeError, NameError):
            pass
        try:
            return self._tally_write_hdf5_1(*args, **kwargs)
        except (RuntimeError, TypeError, NameError):
            pass
        raise RuntimeError('method write_hdf5() could not be dispatched')
    
    

    pass






{'cpppxd_footer': '', 'pyx_header': '', 'pxd_header': '', 'pxd_footer': '', 'cpppxd_header': '', 'pyx_footer': ''}
