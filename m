Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 833F77C8C3C
	for <lists+cake@lfdr.de>; Fri, 13 Oct 2023 19:25:54 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 409103CB42;
	Fri, 13 Oct 2023 13:25:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1697217953;
	bh=WcmDkyiRqF44q9l4afcwAByKC2iQ8wr6JyWTJztCU+Y=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=fP3C4zgUNUogFsk2zc5gq68XJfZ794f2nva7HvP+VyzmC2gHIF1Mdm6ucwTfkNRrj
	 4HTZTRR73xMF17gqP02FC5nn3ARgFGhzjZSApoMuIN7NztkPyVTcVuu7L5QTU4xtSo
	 rI1dd3fCfhpUbAEF6aIcc5kvmS8AL/rZkmDbvmuB2fpqL68Ziv942Nw2HWQESH64PM
	 JnJlyCFXqrI5BYgHgWMDzPnP4QYu6qmi3fB7lbDCpYeAJCR4ndiboSBIYKd3JCtNMU
	 P47gxq0T2pFEzxOCNjRIrcqHNiXKV4Ku0b1vTwg/BX+G0GiT9G9Lqc66A0bc22Fg2y
	 RNMy/lJRAIyTw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com
 [IPv6:2607:f8b0:4864:20::82b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8C3C13B29D
 for <cake@lists.bufferbloat.net>; Fri, 13 Oct 2023 13:25:51 -0400 (EDT)
Received: by mail-qt1-x82b.google.com with SMTP id
 d75a77b69052e-4194d89a6dfso14796121cf.0
 for <cake@lists.bufferbloat.net>; Fri, 13 Oct 2023 10:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697217951; x=1697822751; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=YtuySYiNs5A88aNnjLh5dMtXkNDxxSVQ6mq0zM6Caj8=;
 b=jk8RFsbVN5CCKrYa2khJn9bHpr1ZkALyZLpAGlR1FfhKPRjXkN8h0Bzt9kNJvcPnqV
 lMZLa82vvbOWlFUpe/Ug9pgtcnwflLqppzYBYQvBBM6cRmpdkyvO+1XCfYm5/vyFWGtC
 Pxk6/a/NXfaEsf/TDQFKbYumUDmS2pdjNXB4txr50KSQJ/2iHDYONR7/QUQFHASa72Sv
 4i/EOG75hWbT7oCr3jI3fooqg6u/SqqadzIXskSb9LH8FyE+mmRnsKZnhT95Jb4sojZ2
 JGVKSBpkk1b6pr7ThO82ea0qEm7bYU6OIN1eqPUM1Kj4+zEATCChbRx8sdSO8e1mMQJx
 5c9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697217951; x=1697822751;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YtuySYiNs5A88aNnjLh5dMtXkNDxxSVQ6mq0zM6Caj8=;
 b=p2g8dQfvCnZHbZ8hEVRifpRkot/ZDrIo+nqZQK1VnOuMcb2qUipboyfhTKe51QgN/n
 inlOYmVttQJjl/Db5xeaGFnPZipQJ/DWk2I3l6NB4Vmbh4xU1KQ+GyYUa5htg+LMJ2q/
 F91yoqK7tKABrEdOB4ms+lV9iUq8khkenzI1W7viTD7oBBtFiF2wwEO8xoNnDqQt7qYp
 r+DmXX/wFB/nqU3mmkDQHL0OCH6uh+Txvxe+njfcjHDsRS8pvderY5twGoLWFn9d1krR
 Tb4Vn3n5ztvSzz330+hLo+ZIl0XqtEikfYxpmQBAEbgaShMCLrSyBwwEpkmh5RmPRsAI
 hHUA==
X-Gm-Message-State: AOJu0YyzcoH9bWEq/KQlQrSn0JAc7dxCTUbMUY2RW1aymisCW8AxQ81C
 tHcEb92Mo248rRRfTEXcLtwK5MaU/V+YeGahcbEYMF7RBiQ=
X-Google-Smtp-Source: AGHT+IHMR9VKfKmoAWEnVF0HmSDHEVUxGzW6DYn/s/UL1q2Fq0VTfek1JtQSaOnPIwFP34zKBTWS16qoYvJiEGMwXHI=
X-Received: by 2002:a05:6214:808:b0:655:d870:7306 with SMTP id
 df8-20020a056214080800b00655d8707306mr28880282qvb.25.1697217950561; Fri, 13
 Oct 2023 10:25:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
 <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com>
 <1695068690.78066946@apps.rackspace.com>
 <A1F18F7E-2A27-4F13-87B1-D55594FB69F7@gmail.com>
 <6D098714-69DC-41D9-A7DC-E94FD9C77625@gmail.com>
 <B892D72D-0198-454B-BC15-170B22829351@gmx.de>
 <79EC8CB2-0912-4D66-9FA3-990E9C38C281@gmail.com>
 <FFCCB1ED-3CB4-4F97-9B3B-ADF10F2FE730@gmx.de>
 <r9268rp5-8sr8-262s-7975-q68q6434sp6s@ynat.uz>
 <B1098CE9-AFEA-4B49-94AB-F423BBBC564A@gmx.de>
 <CANypexR9-Cpxup83w9tgcer7Dv48Hsun6+JR=qLPAdhhnRP58w@mail.gmail.com>
In-Reply-To: <CANypexR9-Cpxup83w9tgcer7Dv48Hsun6+JR=qLPAdhhnRP58w@mail.gmail.com>
Date: Fri, 13 Oct 2023 10:25:39 -0700
Message-ID: <CANypexS=7eP0eU4xTO62swRp2o+fM0rg4rG0OSMqq6ybKx2omA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: Re: [Cake] some comprehensive arm64 w/cake results
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
From: dave seddon via Cake <cake@lists.bufferbloat.net>
Reply-To: dave seddon <dave.seddon.ca@gmail.com>
Content-Type: multipart/mixed; boundary="===============8929353779459740954=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8929353779459740954==
Content-Type: multipart/alternative; boundary="0000000000000cbafd06079c592e"

--0000000000000cbafd06079c592e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My bad.  There's a bug for this.... Looks like I have to downgrade fping

https://github.com/tohojo/flent/issues/232
https://github.com/schweikert/fping/issues/203

On Fri, Oct 13, 2023 at 8:59=E2=80=AFAM dave seddon <dave.seddon.ca@gmail.c=
om>
wrote:

> G'day,
>
> I've been working away on automation of the tests.  Pretty close to havin=
g
> much nicer tests with a lot more details.  I've also got the risc-v devic=
e
> working.
>
> However, I've run into something funny with flent.  Flent is not happy
> with fping or ping.
>
> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ /usr/bin/sudo /usr/sbin/ip
> netns exec network101 /usr/bin/flent rrul --output
>  /tmp/qdisc/2023-10-13T15:53:21/pi4/noqueue/flent/test/15_flent/flent_pi4=
_noqueue.png
> --data-dir /tmp/qdisc/2023-10-13T15:53:21/pi4/noqueue/flent/test/15_flent=
/
> --format summary --plot all_scaled --title-extra
> 2023-10-13T15:53:21_pi4_noqueue --note 2023-10-13T15:53:21_pi4_noqueue
> --extended-metadata --host 172.17.51.10 --length 60 --ipv4 --socket-stats
> Starting Flent 2.0.1 using Python 3.10.12.
> Starting rrul test. Expected run time: 70 seconds.
> WARNING: Found fping, but couldn't parse its output. Not
> using.              <---------------- ???
> ERROR: Runner Ping (ms) ICMP failed check: Cannot parse output of the
> system ping binary (/usr/bin/ping). Please install fping v3.5+.    <-----=
 ??
>
> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ dpkg --list | grep ping
> ii  fping                                 5.1-1
>         amd64        sends ICMP ECHO_REQUEST packets to network hosts
> ii  iputils-ping                          3:20211215-1
>        amd64        Tools to test the reachability of network hosts
> ii  kpartx                                0.8.8-1ubuntu1.22.04.1
>        amd64        create device mappings for partitions
> ii  libharfbuzz0b:amd64                   2.7.4-1ubuntu3.1
>        amd64        OpenType text shaping engine (shared library)
> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ fping --version
> fping: Version 5.1
> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ ping -V
> ping from iputils 20211215
>
> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ cat /etc/lsb-release
> DISTRIB_ID=3DUbuntu
> DISTRIB_RELEASE=3D22.04
> DISTRIB_CODENAME=3Djammy
> DISTRIB_DESCRIPTION=3D"Ubuntu 22.04.3 LTS"
>
> I did install via "apt install fping"
>
> Any thoughts please?
>
> Kind regards,
> Dave
>
> On Thu, Sep 28, 2023 at 6:27=E2=80=AFAM Sebastian Moeller via Cake <
> cake@lists.bufferbloat.net> wrote:
>
>>
>>
>> > On Sep 28, 2023, at 15:19, David Lang <david@lang.hm> wrote:
>> >
>> > On Thu, 28 Sep 2023, Sebastian Moeller via Cake wrote:
>> >
>> >> P.S.: I am tempted, but will likely wait until they are available in
>> quantity and hope that the street price comes down a bit before getting =
one
>> ;)
>> >
>> > They aren't available at all yet, and it's not clear when they will be
>> available.
>>
>>         The announcement was end of October, but I think I could
>> pre-order right now if I was feeling an urge. You are right though,
>> announced !=3D available or delivered.
>>
>> Regards
>>         Sebastian
>>
>> P.S.: I have a pi400 in use as "desktop" for my oldest kid, this is clos=
e
>> to be actually generally usable, I would guess that changing a potential
>> p500 from the pi400's 4GB to 8 GB together with the other imprivements t=
he
>> 5 brings might push it over the threshold into the truly useful category=
.
>> Which probably means that either a potential pi500 will come late and
>> probably with only 4 GB, but let's see how this works out now that the
>> supply situation is less problematic.
>> And I understand that there are other capable ARM based SoCs for
>> homerouter/desktop duty, I just happen ot have a soft spot for the
>> raspberry project ;)
>>
>> >
>> > David Lang
>>
>> _______________________________________________
>> Cake mailing list
>> Cake@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/cake
>>
>
>
> --
> Regards,
> Dave Seddon
> +1 415 857 5102
>


--=20
Regards,
Dave Seddon
+1 415 857 5102

--0000000000000cbafd06079c592e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>My bad.=C2=A0 There&#39;s a bug for this.... Looks li=
ke I have to downgrade fping<br></div><div><br></div><div><a href=3D"https:=
//github.com/tohojo/flent/issues/232">https://github.com/tohojo/flent/issue=
s/232</a></div><div><a href=3D"https://github.com/schweikert/fping/issues/2=
03">https://github.com/schweikert/fping/issues/203</a></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 13,=
 2023 at 8:59=E2=80=AFAM dave seddon &lt;<a href=3D"mailto:dave.seddon.ca@g=
mail.com">dave.seddon.ca@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>G&#39;day,</div><di=
v><br></div><div>I&#39;ve been working away on automation of the tests.=C2=
=A0 Pretty close to having much nicer tests with a lot more details.=C2=A0 =
I&#39;ve also got the risc-v device working.<br></div><div><br></div><div>H=
owever, I&#39;ve run into something funny with flent.=C2=A0 Flent is not ha=
ppy with fping or ping.<br></div><div><br></div><div>das@3rd:~/Downloads/ca=
ke/cmd/run_qdiscs_tests$ /usr/bin/sudo /usr/sbin/ip netns exec network101 /=
usr/bin/flent rrul --output =C2=A0/tmp/qdisc/2023-10-13T15:53:21/pi4/noqueu=
e/flent/test/15_flent/flent_pi4_noqueue.png --data-dir /tmp/qdisc/2023-10-1=
3T15:53:21/pi4/noqueue/flent/test/15_flent/ --format summary --plot all_sca=
led --title-extra 2023-10-13T15:53:21_pi4_noqueue --note 2023-10-13T15:53:2=
1_pi4_noqueue --extended-metadata --host 172.17.51.10 --length 60 --ipv4 --=
socket-stats<br>Starting Flent 2.0.1 using Python 3.10.12.<br>Starting rrul=
 test. Expected run time: 70 seconds.<br>WARNING: Found fping, but couldn&#=
39;t parse its output. Not using.=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &lt;---------------- ???<br>ERROR: Run=
ner Ping (ms) ICMP failed check: Cannot parse output of the system ping bin=
ary (/usr/bin/ping). Please install fping v3.5+.=C2=A0=C2=A0=C2=A0 &lt;----=
- ??</div><div><br></div><div>das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests=
$ dpkg --list | grep ping<br>ii =C2=A0fping =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 5.1-1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 amd64 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0sends ICMP ECHO_REQUEST packets to network hosts<br>ii =C2=
=A0iputils-ping =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A03:20211215-1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0amd64 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0Tools to test the reachability of network hosts<br>=
ii =C2=A0kpartx =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.8.8-1ubuntu1.22.04.1 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0amd64 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0create device mappings for partitions<br>ii =C2=A0libha=
rfbuzz0b:amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 2.7.4-1ubuntu3.1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0OpenType te=
xt shaping engine (shared library)<br>das@3rd:~/Downloads/cake/cmd/run_qdis=
cs_tests$ fping --version<br>fping: Version 5.1</div><div>das@3rd:~/Downloa=
ds/cake/cmd/run_qdiscs_tests$ ping -V<br>ping from iputils 20211215</div><d=
iv><br></div><div>das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ cat /etc/l=
sb-release <br>DISTRIB_ID=3DUbuntu<br>DISTRIB_RELEASE=3D22.04<br>DISTRIB_CO=
DENAME=3Djammy<br>DISTRIB_DESCRIPTION=3D&quot;Ubuntu 22.04.3 LTS&quot;</div=
><div><br></div><div>I did install via &quot;apt install fping&quot;<br></d=
iv><div><br></div><div>Any thoughts please?</div><div><br></div><div>Kind r=
egards,</div><div>Dave<br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 28, 2023 at 6:27=E2=80=AFAM Seb=
astian Moeller via Cake &lt;<a href=3D"mailto:cake@lists.bufferbloat.net" t=
arget=3D"_blank">cake@lists.bufferbloat.net</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><br>
<br>
&gt; On Sep 28, 2023, at 15:19, David Lang &lt;<a href=3D"mailto:david@lang=
.hm" target=3D"_blank">david@lang.hm</a>&gt; wrote:<br>
&gt; <br>
&gt; On Thu, 28 Sep 2023, Sebastian Moeller via Cake wrote:<br>
&gt; <br>
&gt;&gt; P.S.: I am tempted, but will likely wait until they are available =
in quantity and hope that the street price comes down a bit before getting =
one ;)<br>
&gt; <br>
&gt; They aren&#39;t available at all yet, and it&#39;s not clear when they=
 will be available.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 The announcement was end of October, but I thin=
k I could pre-order right now if I was feeling an urge. You are right thoug=
h, announced !=3D available or delivered.<br>
<br>
Regards<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Sebastian<br>
<br>
P.S.: I have a pi400 in use as &quot;desktop&quot; for my oldest kid, this =
is close to be actually generally usable, I would guess that changing a pot=
ential p500 from the pi400&#39;s 4GB to 8 GB together with the other impriv=
ements the 5 brings might push it over the threshold into the truly useful =
category. Which probably means that either a potential pi500 will come late=
 and probably with only 4 GB, but let&#39;s see how this works out now that=
 the supply situation is less problematic.<br>
And I understand that there are other capable ARM based SoCs for homerouter=
/desktop duty, I just happen ot have a soft spot for the raspberry project =
;)<br>
<br>
&gt; <br>
&gt; David Lang<br>
<br>
_______________________________________________<br>
Cake mailing list<br>
<a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.=
bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"noreferrer" =
target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Regards,<br></div>Dave=
 Seddon<br>+1 415 857 5102<br></div></div></div></div></div></div>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Regards,<br></div>Dave=
 Seddon<br>+1 415 857 5102<br></div></div></div></div></div></div>

--0000000000000cbafd06079c592e--

--===============8929353779459740954==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8929353779459740954==--
