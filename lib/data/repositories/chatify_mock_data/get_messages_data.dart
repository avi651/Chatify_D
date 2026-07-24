import 'package:chatify/core/services/typedef.dart';

class GetMessagesData {
  static const Json data = {
    "messages": [
      {
        "id": 1,
        "sender_id": 2,
        "message": "Hello Rahul",
        "message_type": "text",
        "file_url": null,
        "file_name": null,
        "file_size": null,
        "created_at": "2026-07-11T21:10:24.314740+05:30",
      },
      {
        "id": 2,
        "sender_id": 1,
        "message": "Hello Avinash",
        "message_type": "text",
        "file_url": null,
        "file_name": null,
        "file_size": null,
        "created_at": "2026-07-11T21:43:13.203462+05:30",
      },
      {
        "id": 4,
        "sender_id": 3,
        "message": null,
        "message_type": "image",
        "file_url": "/uploads/b8aa6558-16bb-43ac-8c06-27d298f09a0a.png",
        "file_name": "Simulator Screenshot.png",
        "file_size": 2326535,
        "created_at": "2026-07-11T22:55:28.268877+05:30",
      },
      {
        "id": 5,
        "sender_id": 3,
        "message": null,
        "message_type": "image",
        "file_url": "/uploads/39a2c4ef-32fb-4885-ba98-67715fc04caa.png",
        "file_name":
            "Simulator Screenshot - iPhone 17 Pro - 2026-06-29 at 12.28.10.png",
        "file_size": 2326535,
        "created_at": "2026-07-11T22:56:44.449007+05:30",
      },
      {
        "id": 6,
        "sender_id": 3,
        "message": "Receipt Test",
        "message_type": "text",
        "file_url": null,
        "file_name": null,
        "file_size": null,
        "created_at": "2026-07-11T23:08:31.565755+05:30",
      },
    ],
    "has_more": false,
  };
}
