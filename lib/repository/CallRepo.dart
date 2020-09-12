class CallHistory {
  final bool incoming;
  final bool didAttend;
  final String time;
  final String callType;

  CallHistory({
    this.time,
    this.incoming,
    this.callType,
    this.didAttend,
  });
}

List<CallHistory> myCall = [
  CallHistory(
    time: "Today, 11:30 AM",
    incoming: true,
    didAttend: true,
    callType: "call",
  ),
  CallHistory(
    time: "Today, 8:00 AM",
    incoming: false,
    didAttend: true,
    callType: "call",
  ),
  CallHistory(
    time: "Yesterday, 6:30 AM",
    incoming: false,
    didAttend: false,
    callType: "video",
  ),
  CallHistory(
    time: "Thursday, 1:00 PM",
    incoming: true,
    didAttend: true,
    callType: "call",
  ),
  CallHistory(
    time: "Last Week",
    incoming: true,
    didAttend: false,
    callType: "video",
  ),
  CallHistory(
    time: "Last Month",
    incoming: false,
    didAttend: false,
    callType: "video",
  ),
  CallHistory(
    time: "Last Month",
    incoming: false,
    didAttend: true,
    callType: "video",
  ),
];
