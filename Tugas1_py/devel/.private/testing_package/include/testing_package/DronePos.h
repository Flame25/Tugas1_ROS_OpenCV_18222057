// Generated by gencpp from file testing_package/DronePos.msg
// DO NOT EDIT!


#ifndef TESTING_PACKAGE_MESSAGE_DRONEPOS_H
#define TESTING_PACKAGE_MESSAGE_DRONEPOS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace testing_package
{
template <class ContainerAllocator>
struct DronePos_
{
  typedef DronePos_<ContainerAllocator> Type;

  DronePos_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , status()  {
    }
  DronePos_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , status(_alloc)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::testing_package::DronePos_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::testing_package::DronePos_<ContainerAllocator> const> ConstPtr;

}; // struct DronePos_

typedef ::testing_package::DronePos_<std::allocator<void> > DronePos;

typedef boost::shared_ptr< ::testing_package::DronePos > DronePosPtr;
typedef boost::shared_ptr< ::testing_package::DronePos const> DronePosConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::testing_package::DronePos_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::testing_package::DronePos_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::testing_package::DronePos_<ContainerAllocator1> & lhs, const ::testing_package::DronePos_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::testing_package::DronePos_<ContainerAllocator1> & lhs, const ::testing_package::DronePos_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace testing_package

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::testing_package::DronePos_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::testing_package::DronePos_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::testing_package::DronePos_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::testing_package::DronePos_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::testing_package::DronePos_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::testing_package::DronePos_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::testing_package::DronePos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e6a596adc3bf326d53fab1c9d16f722b";
  }

  static const char* value(const ::testing_package::DronePos_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe6a596adc3bf326dULL;
  static const uint64_t static_value2 = 0x53fab1c9d16f722bULL;
};

template<class ContainerAllocator>
struct DataType< ::testing_package::DronePos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "testing_package/DronePos";
  }

  static const char* value(const ::testing_package::DronePos_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::testing_package::DronePos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64   x\n"
"float64   y\n"
"float64   z\n"
"string    status\n"
;
  }

  static const char* value(const ::testing_package::DronePos_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::testing_package::DronePos_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DronePos_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::testing_package::DronePos_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::testing_package::DronePos_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TESTING_PACKAGE_MESSAGE_DRONEPOS_H