Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A98C98876
	for <lists+cake@lfdr.de>; Mon, 01 Dec 2025 18:32:15 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 16D439F057B;
	Mon, 01 Dec 2025 18:32:14 +0100 (CET)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764610333;
 b=qkzK2yQtpxwiumt1t6Q0EqMZGfmqHF9ZKbAny4IYnlT6+/GtH+5XJ4Z/bbrNh0XosXHDg
 EsuEZgPX6hDVdqjCaXeSZ1Tlx0b7qd/TkJhFlSOj7tIGUC1ceWQT1k2ieDP9rn6CO+a9Nmv
 GMtYecDQjkT/wwHLM9DVyoKyl6wTpkk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764610333; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=sqTdv67jJX0EGpaTDC8jR2BcAwVU6e4fZVP1cuAI95A=;
 b=OjP9UyDCKUFriGCyXYhF4uNHy0ACTrwcycIeocM+i+iR1WFzNPzQzSRq4Z/KB6+IgcVxU
 6tTaBmxGRPbbRFDiC3C5yRwin0juqstQ5HDDEydw9VxGSUJ8RtZduMNIe1CmhxlE2tmo6AA
 /2M9MiYcecTRdipwqHVycls+XXUvavk=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=fail;
 arc=none;
 dmarc=fail header.from=syzkaller.appspotmail.com policy.dmarc=none
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used Org Domain Record) header.from=syzkaller.appspotmail.com
 policy.dmarc=none
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199])
	by mail.toke.dk (Postfix) with ESMTPS id CC47B9ECCD7
	for <cake@lists.bufferbloat.net>; Mon, 01 Dec 2025 09:11:52 +0100 (CET)
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-43328dcdac1so30122135ab.2
        for <cake@lists.bufferbloat.net>;
 Mon, 01 Dec 2025 00:11:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764576711; x=1765181511;
        h=cc:to:from:subject:message-id:in-reply-to:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6Iwc2hfL2CiUbmYOuavqFWE6zzw3VAAADszoXI4JzTo=;
        b=nHS0drrd6GRr7jcQgybLPWjl98bHjLWEq0lODZvCnMjm7jOGihgNfy6ju9FXAbFYO3
         TACY1J5ZjA00atm9UtdgI6oXqYfYy6OrnemRCy238VLDCRYj6ZlG+PNQi9+MM0r4wWpa
         H4dwN7Fuk663lLpurhKliGfNbctzzCyHq88vwhswX7LnOUXbTwOkLhjBJUwmlYCv7FIi
         S2kMsuLRS02c7PEy9b1eScYsalo9g2MCKpeXVErjU6XT0pDGZU6+Un2wRsy7wplzYEcV
         StcArKzL6ha4UvqPaTXhCA5x2Pk3qg/BQFF00TnupG5866bGFKYVawVLGUCJahId63ay
         QpvA==
X-Gm-Message-State: AOJu0YztdS14qf+16f0NfcByoK82V8hTk6T+yLa699i/0kJ+AmVAlzK/
	+pzdgwpUYJtprtdgOohuUOCWn18zLHsf63vIru6CvjM4l2HcP/hfFRcapWtQ0vB//r+euVhk0H9
	l8eWdHeqGI17rlQq0M903UPO3QSSdLEwAVn8a0Bwl6Yzpe262+Xp/rrNr5ws=
X-Google-Smtp-Source: 
 AGHT+IEubtOWf/nm6qTJVAaELjGS41IpizzAg3T3+r3yI5jsV8yKX1haTWUVtUf4FQ9kx2zzNLcvkFNqjbXIUzxSpdzZsqCY6JK7
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:156a:b0:434:96ea:ff6e with SMTP id
 e9e14a558f8ab-435dd13b1e8mr225511735ab.39.1764576710886; Mon, 01 Dec 2025
 00:11:50 -0800 (PST)
Date: Mon, 01 Dec 2025 00:11:50 -0800
In-Reply-To: <20251130-mq-cake-sub-qdisc-v3-0-5f66c548ecdc@redhat.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <692d4dc6.a70a0220.2ea503.00af.GAE@google.com>
From: syzbot ci <syzbot+ci3207a09d67ffd3f9@syzkaller.appspotmail.com>
To: cake@lists.bufferbloat.net, davem@davemloft.net, edumazet@google.com,
	horms@kernel.org, j.koeppeler@tu-berlin.de, jhs@mojatatu.com,
	jiri@resnulli.us, kuba@kernel.org, netdev@vger.kernel.org, pabeni@redhat.com,
	toke@redhat.com, toke@toke.dk, xiyou.wangcong@gmail.com
Cc: syzbot@lists.linux.dev, syzkaller-bugs@googlegroups.com
X-MailFrom: 
 3xk0taQkbAGcXdePFQQJWFUUNI.LTTLQJZXJWHTSYJSY.HTR@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: H7ZRK6MIIWRSLCIKF4I5K7J2L2WV63CQ
X-Message-ID-Hash: H7ZRK6MIIWRSLCIKF4I5K7J2L2WV63CQ
X-Mailman-Approved-At: Mon, 01 Dec 2025 18:32:12 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [syzbot ci] Re: Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/692d4dc6.a70a0220.2ea503.00af.GAE@google.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

syzbot ci has tested the following series

[v3] Multi-queue aware sch_cake
https://lore.kernel.org/all/20251130-mq-cake-sub-qdisc-v3-0-5f66c548ecdc@redhat.com
* [PATCH net-next v3 1/5] net/sched: Export mq functions for reuse
* [PATCH net-next v3 2/5] net/sched: sch_cake: Factor out config variables into separate struct
* [PATCH net-next v3 3/5] net/sched: sch_cake: Add cake_mq qdisc for using cake on mq devices
* [PATCH net-next v3 4/5] net/sched: sch_cake: Share config across cake_mq sub-qdiscs
* [PATCH net-next v3 5/5] net/sched: sch_cake: share shaper state across sub-instances of cake_mq

and found the following issue:
general protection fault in cake_destroy

Full report is available here:
https://ci.syzbot.org/series/469dbe1a-fdda-4481-ae02-4a1ec685d27e

***

general protection fault in cake_destroy

tree:      net-next
URL:       https://kernel.googlesource.com/pub/scm/linux/kernel/git/netdev/net-next.git
base:      db4029859d6fd03f0622d394f4cdb1be86d7ec62
arch:      amd64
compiler:  Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
config:    https://ci.syzbot.org/builds/e4777953-23df-407f-8d5c-6b069ad52321/config
C repro:   https://ci.syzbot.org/findings/c250604b-a027-4732-9850-88499503b6a4/c_repro
syz repro: https://ci.syzbot.org/findings/c250604b-a027-4732-9850-88499503b6a4/syz_repro

netlink: 'syz.0.17': attribute type 9 has an invalid length.
Oops: general protection fault, probably for non-canonical address 0xdffffc0000000006: 0000 [#1] SMP KASAN PTI
KASAN: null-ptr-deref in range [0x0000000000000030-0x0000000000000037]
CPU: 1 UID: 0 PID: 5958 Comm: syz.0.17 Not tainted syzkaller #0 PREEMPT(full) 
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.2-debian-1.16.2-1 04/01/2014
RIP: 0010:cake_destroy+0x9f/0x100 net/sched/sch_cake.c:2790
Code: 81 c3 98 02 00 00 48 89 d8 48 c1 e8 03 42 80 3c 38 00 74 08 48 89 df e8 bf 0f c8 f8 48 8b 1b 4c 8d 73 34 4c 89 f0 48 c1 e8 03 <42> 0f b6 04 38 84 c0 75 35 41 0f b6 2e 31 ff 89 ee e8 eb 4e 62 f8
RSP: 0018:ffffc90003247298 EFLAGS: 00010207
RAX: 0000000000000006 RBX: 0000000000000000 RCX: 13d577b5b867bd00
RDX: 0000000000000000 RSI: ffffffff8bbf08c0 RDI: ffffffff8bbf0880
RBP: ffffc90003247410 R08: ffffc9000324727f R09: 0000000000000000
R10: ffffc90003247260 R11: fffff52000648e50 R12: ffffffff895db710
R13: 00000000ffffffde R14: 0000000000000034 R15: dffffc0000000000
FS:  000055555e5bf500(0000) GS:ffff8882a9f31000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055555e5bf808 CR3: 00000001bb50a000 CR4: 00000000000006f0
Call Trace:
 <TASK>
 qdisc_create+0xaa3/0xea0 net/sched/sch_api.c:1353
 __tc_modify_qdisc net/sched/sch_api.c:1753 [inline]
 tc_modify_qdisc+0x1547/0x2020 net/sched/sch_api.c:1817
 rtnetlink_rcv_msg+0x77c/0xb70 net/core/rtnetlink.c:6967
 netlink_rcv_skb+0x208/0x470 net/netlink/af_netlink.c:2550
 netlink_unicast_kernel net/netlink/af_netlink.c:1318 [inline]
 netlink_unicast+0x82f/0x9e0 net/netlink/af_netlink.c:1344
 netlink_sendmsg+0x805/0xb30 net/netlink/af_netlink.c:1894
 sock_sendmsg_nosec net/socket.c:727 [inline]
 __sock_sendmsg+0x21c/0x270 net/socket.c:742
 ____sys_sendmsg+0x505/0x830 net/socket.c:2630
 ___sys_sendmsg+0x21f/0x2a0 net/socket.c:2684
 __sys_sendmsg net/socket.c:2716 [inline]
 __do_sys_sendmsg net/socket.c:2721 [inline]
 __se_sys_sendmsg net/socket.c:2719 [inline]
 __x64_sys_sendmsg+0x19b/0x260 net/socket.c:2719
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0xfa0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7ff769b8f7c9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd59035098 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
RAX: ffffffffffffffda RBX: 00007ff769de5fa0 RCX: 00007ff769b8f7c9
RDX: 0000000000000000 RSI: 0000200000000000 RDI: 0000000000000003
RBP: 00007ff769bf297f R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ff769de5fa0 R14: 00007ff769de5fa0 R15: 0000000000000003
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:cake_destroy+0x9f/0x100 net/sched/sch_cake.c:2790
Code: 81 c3 98 02 00 00 48 89 d8 48 c1 e8 03 42 80 3c 38 00 74 08 48 89 df e8 bf 0f c8 f8 48 8b 1b 4c 8d 73 34 4c 89 f0 48 c1 e8 03 <42> 0f b6 04 38 84 c0 75 35 41 0f b6 2e 31 ff 89 ee e8 eb 4e 62 f8
RSP: 0018:ffffc90003247298 EFLAGS: 00010207
RAX: 0000000000000006 RBX: 0000000000000000 RCX: 13d577b5b867bd00
RDX: 0000000000000000 RSI: ffffffff8bbf08c0 RDI: ffffffff8bbf0880
RBP: ffffc90003247410 R08: ffffc9000324727f R09: 0000000000000000
R10: ffffc90003247260 R11: fffff52000648e50 R12: ffffffff895db710
R13: 00000000ffffffde R14: 0000000000000034 R15: dffffc0000000000
FS:  000055555e5bf500(0000) GS:ffff8882a9f31000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055555e5bf808 CR3: 00000001bb50a000 CR4: 00000000000006f0
----------------
Code disassembly (best guess):
   0:	81 c3 98 02 00 00    	add    $0x298,%ebx
   6:	48 89 d8             	mov    %rbx,%rax
   9:	48 c1 e8 03          	shr    $0x3,%rax
   d:	42 80 3c 38 00       	cmpb   $0x0,(%rax,%r15,1)
  12:	74 08                	je     0x1c
  14:	48 89 df             	mov    %rbx,%rdi
  17:	e8 bf 0f c8 f8       	call   0xf8c80fdb
  1c:	48 8b 1b             	mov    (%rbx),%rbx
  1f:	4c 8d 73 34          	lea    0x34(%rbx),%r14
  23:	4c 89 f0             	mov    %r14,%rax
  26:	48 c1 e8 03          	shr    $0x3,%rax
* 2a:	42 0f b6 04 38       	movzbl (%rax,%r15,1),%eax <-- trapping instruction
  2f:	84 c0                	test   %al,%al
  31:	75 35                	jne    0x68
  33:	41 0f b6 2e          	movzbl (%r14),%ebp
  37:	31 ff                	xor    %edi,%edi
  39:	89 ee                	mov    %ebp,%esi
  3b:	e8 eb 4e 62 f8       	call   0xf8624f2b


***

If these findings have caused you to resend the series or submit a
separate fix, please add the following tag to your commit message:
  Tested-by: syzbot@syzkaller.appspotmail.com

---
This report is generated by a bot. It may contain errors.
syzbot ci engineers can be reached at syzkaller@googlegroups.com.
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
