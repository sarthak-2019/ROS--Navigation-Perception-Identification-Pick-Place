// Generated by gencpp from file task5_msgs/Flag_msg.msg
// DO NOT EDIT!


#ifndef TASK5_MSGS_MESSAGE_FLAG_MSG_H
#define TASK5_MSGS_MESSAGE_FLAG_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace task5_msgs
{
template <class ContainerAllocator>
struct Flag_msg_
{
  typedef Flag_msg_<ContainerAllocator> Type;

  Flag_msg_()
    : signal(0)  {
    }
  Flag_msg_(const ContainerAllocator& _alloc)
    : signal(0)  {
  (void)_alloc;
    }



   typedef int64_t _signal_type;
  _signal_type signal;





  typedef boost::shared_ptr< ::task5_msgs::Flag_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::task5_msgs::Flag_msg_<ContainerAllocator> const> ConstPtr;

}; // struct Flag_msg_

typedef ::task5_msgs::Flag_msg_<std::allocator<void> > Flag_msg;

typedef boost::shared_ptr< ::task5_msgs::Flag_msg > Flag_msgPtr;
typedef boost::shared_ptr< ::task5_msgs::Flag_msg const> Flag_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::task5_msgs::Flag_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::task5_msgs::Flag_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::task5_msgs::Flag_msg_<ContainerAllocator1> & lhs, const ::task5_msgs::Flag_msg_<ContainerAllocator2> & rhs)
{
  return lhs.signal == rhs.signal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::task5_msgs::Flag_msg_<ContainerAllocator1> & lhs, const ::task5_msgs::Flag_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace task5_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::task5_msgs::Flag_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::task5_msgs::Flag_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::task5_msgs::Flag_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::task5_msgs::Flag_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::task5_msgs::Flag_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::task5_msgs::Flag_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::task5_msgs::Flag_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e57ff88f4c17b249531e77b7e8959fdc";
  }

  static const char* value(const ::task5_msgs::Flag_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe57ff88f4c17b249ULL;
  static const uint64_t static_value2 = 0x531e77b7e8959fdcULL;
};

template<class ContainerAllocator>
struct DataType< ::task5_msgs::Flag_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "task5_msgs/Flag_msg";
  }

  static const char* value(const ::task5_msgs::Flag_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::task5_msgs::Flag_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 signal\n"
;
  }

  static const char* value(const ::task5_msgs::Flag_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::task5_msgs::Flag_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.signal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Flag_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::task5_msgs::Flag_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::task5_msgs::Flag_msg_<ContainerAllocator>& v)
  {
    s << indent << "signal: ";
    Printer<int64_t>::stream(s, indent + "  ", v.signal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TASK5_MSGS_MESSAGE_FLAG_MSG_H