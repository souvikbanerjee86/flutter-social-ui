import 'package:flutter/material.dart';
import 'package:flutter_social_ui/data/data.dart';
import 'package:flutter_social_ui/models/user_model.dart';

class FollowingUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Text(
            "Following",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 2.0),
          ),
        ),
        Container(
          height: 80.0,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              User user = users[index];
              return GestureDetector(
                onTap: () {},
                child: Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 8.0,
                        )
                      ],
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2.0,
                        color: Theme.of(context).primaryColor,
                      )),
                  child: ClipOval(
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(user.profileImageUrl),
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
              );
            },
            itemCount: users.length,
          ),
        )
      ],
    );
  }
}
