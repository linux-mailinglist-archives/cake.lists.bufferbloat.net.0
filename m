Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AF67C9A0A
	for <lists+cake@lfdr.de>; Sun, 15 Oct 2023 18:25:06 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5F41C3CB42;
	Sun, 15 Oct 2023 12:25:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1697387105;
	bh=k1clGPjpnNsq/1XukG677t/xCDLN2FObthLCwHc0mYU=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=MQGlhrgsBprBqObJ1Us3XAUmM98ogWkjjN1T3CJn+1p+CZGnSW+6XfkunHjSBIwHz
	 J2j5TRapWHa2h2q3uF2/eVJXE9DZ9Y96QiqvNHUNZADI49oXKOH2x+90jFQhsBqNaU
	 Xpajbr8G8k988VK/HbsuIRELOr/gwCUgXCECNW1WDbefb9JpAHyeMKlaycNPaWcvgK
	 BjT1IC9aaBLDSTQlsmn/3azD9vILneuIne7pbSr10oSKL4xFEi38YfkJeUl8uj4txL
	 SflTfomcJIkuCJwq6+RPSyF3Yp7p7nqNncagUoz7Veoulu7+a1K4Q3399IG9S1uyrt
	 gGDb50xPnOXgg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com
 [IPv6:2607:f8b0:4864:20::f35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 968C73CB39
 for <cake@lists.bufferbloat.net>; Sun, 15 Oct 2023 12:25:04 -0400 (EDT)
Received: by mail-qv1-xf35.google.com with SMTP id
 6a1803df08f44-66d11fec9a5so21344066d6.1
 for <cake@lists.bufferbloat.net>; Sun, 15 Oct 2023 09:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697387103; x=1697991903; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=OasvWGpAg7jQa0A/qoxQx0p51w/DBccoevR+jW80Kt0=;
 b=hoewNHrFmlKp1Nmw9lPXqTmmF5H7KAdJNkOOFdPIlE7epdHjfA8JmICsrFyPItQxh/
 ceB4gQA3YuEM89o9Otd23mJW1lf9d171wESYg5lmmCRk5SZTLeCCBaZFsd9dB8drwqYv
 CcA5x4EVPyuvr1ffiPUwOPJynvXrFVexvgb5oQ5mJ0RqjtyM20LV9it6lODoZZwnnlwb
 6HRxn5+I3dE/1+uecqqt60v9EnbL0fe9/82sXvRWFHTWymtYrZ5XHAmJh1HUL2KS2oEL
 7BZob/WR2DhmXLyt0hChvWxFtg1fHPvaxdlIF21jiLfVhz3lF4p+YX26H7zOpq3LDqEy
 xOFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697387103; x=1697991903;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=OasvWGpAg7jQa0A/qoxQx0p51w/DBccoevR+jW80Kt0=;
 b=sgh+WFLZZFE0h4BtGRSJDYbmwfE3ngnbu1/0T29ky9H4TebxX20kssjHnKZYHJwvge
 r2m/By2vJgJl67vlPINMo6r4+quOyQxPd5V0oyS73d1yYQjRwI2doNaA+69XYGx9bMTc
 u84XuvdfifbrQsnkmgy6tFMnMMcb0TZFcePJwbxJxvuhanPFRHZah3Dp4vRoI7gs7YGg
 WLdGXv/X61Whys8uMyCtPO/ET6Dl8KcdxU5JStfBNc+MVvUC+2Bjekna6wNNuFUZEjXn
 wxFtzQ294JlM062zhzAvtiyY1VwsgbTit5q8B98mo3ip9CbdHPwFX2GTWm7jh6VlK5QG
 +P4w==
X-Gm-Message-State: AOJu0Yx79rJLJ1ccOj8mNYA1hP1N8K4n7rBrSUCz6xf6/sx12A9nFeBq
 p96MofALwepF5/Is2cna9ZLzdVZsYC/TjxfN4hY=
X-Google-Smtp-Source: AGHT+IHtJ6koMqjMcuIZqGRpT5YfuTmnOR7Ge3WB6qTNaf/lRzOek4YX/JRwPR1DnDoz2HCjx/ph7RZULsEy2lvCqS4=
X-Received: by 2002:a0c:f247:0:b0:65a:fe8f:14a5 with SMTP id
 z7-20020a0cf247000000b0065afe8f14a5mr28164459qvl.52.1697387103264; Sun, 15
 Oct 2023 09:25:03 -0700 (PDT)
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
 <CANypexS=7eP0eU4xTO62swRp2o+fM0rg4rG0OSMqq6ybKx2omA@mail.gmail.com>
 <CANypexRZaxEDATZbK78NdzWrBSs6nnH_kyP_HA4HT2Ka7N8f5Q@mail.gmail.com>
 <EADF76C6-5C1A-47DB-BDD1-10BC0D7C4522@gmx.de>
In-Reply-To: <EADF76C6-5C1A-47DB-BDD1-10BC0D7C4522@gmx.de>
Date: Sun, 15 Oct 2023 09:24:51 -0700
Message-ID: <CANypexT3z0=Avm1pb5wmajZ83HfCswappF2wvOjCiWiW00FJBQ@mail.gmail.com>
To: Sebastian Moeller <moeller0@gmx.de>
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
Cc: dave seddon via Cake <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============3271761418627532817=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3271761418627532817==
Content-Type: multipart/alternative; boundary="00000000000056286b0607c3bbdc"

--00000000000056286b0607c3bbdc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Oh thanks Sebastian.  I have irtt installed, but it looks like I need to
start the server.   That's easy.  Doing it now.

( Incidentally, I did write a golang based icmp pinger.  It can ping at
very high rates: https://github.com/edgio/icmpengine.  Really should write
one with rust using io_uring... )



On Sun, Oct 15, 2023 at 8:53=E2=80=AFAM Sebastian Moeller <moeller0@gmx.de>=
 wrote:

> If I recall correctly, flent will use irtt for its delay probes if
> available on both ends. Sure fixing fping seems like a good thing longer
> term, but to get data in quickly, maybe try irtt instead?
>
>
> On 15 October 2023 17:11:23 CEST, dave seddon via Cake <
> cake@lists.bufferbloat.net> wrote:
>
>> G'day,
>>
>> I've put more work into a test framework around the qdisc tests, but
>> unfortunately flent doesn't work easily with Ubuntu LTS (
>> https://github.com/tohojo/flent/issues/232, which I think is an issue
>> with flent parsing the fping output ).
>>
>> Results and graphs in this sheet:
>>
>> https://docs.google.com/spreadsheets/d/1T59QwEdNwJFm4TgDFA_NY98gicOm8ABX=
KvDsSIMz9ag/edit#gid=3D1203641125
>>
>> Raw results of x2 test runs are here:
>>
>> https://github.com/randomizedcoder/qdisc_results/blob/main/qdisc/report.=
csv
>>
>> Each run:
>>
>> https://github.com/randomizedcoder/qdisc_results/blob/main/qdisc/2023-10=
-13T18%3A45%3A45/report.csv
>>
>> https://github.com/randomizedcoder/qdisc_results/blob/main/qdisc/2023-10=
-14T14%3A22%3A53/report.csv
>>
>> Full iperf outputs are available too, for example: https://github.com/ra=
ndomizedcoder/qdisc_results/blob/main/qdisc/2023-10-13T18%3A45%3A45/nanopi-=
r2s/fq_codel/iperf/test/16_iperf/stdout
>>
>>
>> Logs for each run are also available, for example:
>> https://github.com/randomizedcoder/qdisc_results/blob/main/qdisc/2023-10=
-13T18%3A45%3A45/log.json
>>
>> The code repo updated here: https://github.com/randomizedcoder/cake ,
>> with thehttps://github.com/randomizedcoder/cake/blob/main/README.md
>> which explains how the test work.
>> Updated google doc is started here:
>> https://docs.google.com/document/d/1fYKj3BS89aB9drg_DsSq289xSdVQhn1zUJYC=
j0WuCs0/edit?usp=3Dsharing
>>
>> Based on the questions on this list earlier, there is a folder with
>> device information for each of the devices
>> https://github.com/randomizedcoder/cake/tree/main/device_info
>>
>> For example, the Pi4 and the Lichee Pi (risc-v) hardware layout is here:
>> - https://github.com/randomizedcoder/cake/blob/main/device_info/pi4/hwlo=
c-ls-pi4.png
>>
>> -
>> https://github.com/randomizedcoder/cake/blob/main/device_info/lpi4a/hwlo=
c-ls-lpi4a.png
>>
>> The switch has also been upgraded to a Cisco 3750x, which I think based
>> on the "show interface" output has a max queue size of 40 frames.  The t=
est
>> process clears the counters before each test and gathers the "show
>> interface" output at the end.
>>
>> The Lichee Pi 4A doesn't look good (
>> https://wiki.sipeed.com/hardware/en/lichee/th1520/lp4a.html )
>>
>> [image: image.png]
>> I really wish the flent was working, so I'll probably see if I can work
>> out the parsing.
>>
>> Thanks,
>> Dave Seddon
>>
>> On Fri, Oct 13, 2023 at 10:25=E2=80=AFAM dave seddon <dave.seddon.ca@gma=
il.com>
>> wrote:
>>
>>> My bad.  There's a bug for this.... Looks like I have to downgrade fpin=
g
>>>
>>> https://github.com/tohojo/flent/issues/232
>>> https://github.com/schweikert/fping/issues/203
>>>
>>> On Fri, Oct 13, 2023 at 8:59=E2=80=AFAM dave seddon <dave.seddon.ca@gma=
il.com>
>>> wrote:
>>>
>>>> G'day,
>>>>
>>>> I've been working away on automation of the tests.  Pretty close to
>>>> having much nicer tests with a lot more details.  I've also got the ri=
sc-v
>>>> device working.
>>>>
>>>> However, I've run into something funny with flent.  Flent is not happy
>>>> with fping or ping.
>>>>
>>>> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ /usr/bin/sudo
>>>> /usr/sbin/ip netns exec network101 /usr/bin/flent rrul --output
>>>>  /tmp/qdisc/2023-10-13T15:53:21/pi4/noqueue/flent/test/15_flent/flent_=
pi4_noqueue.png
>>>> --data-dir /tmp/qdisc/2023-10-13T15:53:21/pi4/noqueue/flent/test/15_fl=
ent/
>>>> --format summary --plot all_scaled --title-extra
>>>> 2023-10-13T15:53:21_pi4_noqueue --note 2023-10-13T15:53:21_pi4_noqueue
>>>> --extended-metadata --host 172.17.51.10 --length 60 --ipv4 --socket-st=
ats
>>>> Starting Flent 2.0.1 using Python 3.10.12.
>>>> Starting rrul test. Expected run time: 70 seconds.
>>>> WARNING: Found fping, but couldn't parse its output. Not
>>>> using.              <---------------- ???
>>>> ERROR: Runner Ping (ms) ICMP failed check: Cannot parse output of the
>>>> system ping binary (/usr/bin/ping). Please install fping v3.5+.    <--=
--- ??
>>>>
>>>> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ dpkg --list | grep ping
>>>> ii  fping                                 5.1-1
>>>>           amd64        sends ICMP ECHO_REQUEST packets to network host=
s
>>>> ii  iputils-ping                          3:20211215-1
>>>>            amd64        Tools to test the reachability of network host=
s
>>>> ii  kpartx                                0.8.8-1ubuntu1.22.04.1
>>>>            amd64        create device mappings for partitions
>>>> ii  libharfbuzz0b:amd64                   2.7.4-1ubuntu3.1
>>>>            amd64        OpenType text shaping engine (shared library)
>>>> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ fping --version
>>>> fping: Version 5.1
>>>> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ ping -V
>>>> ping from iputils 20211215
>>>>
>>>> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ cat /etc/lsb-release
>>>> DISTRIB_ID=3DUbuntu
>>>> DISTRIB_RELEASE=3D22.04
>>>> DISTRIB_CODENAME=3Djammy
>>>> DISTRIB_DESCRIPTION=3D"Ubuntu 22.04.3 LTS"
>>>>
>>>> I did install via "apt install fping"
>>>>
>>>> Any thoughts please?
>>>>
>>>> Kind regards,
>>>> Dave
>>>>
>>>> On Thu, Sep 28, 2023 at 6:27=E2=80=AFAM Sebastian Moeller via Cake <
>>>> cake@lists.bufferbloat.net> wrote:
>>>>
>>>>>
>>>>>
>>>>> > On Sep 28, 2023, at 15:19, David Lang <david@lang.hm> wrote:
>>>>> >
>>>>> > On Thu, 28 Sep 2023, Sebastian Moeller via Cake wrote:
>>>>> >
>>>>> >> P.S.: I am tempted, but will likely wait until they are available
>>>>> in quantity and hope that the street price comes down a bit before ge=
tting
>>>>> one ;)
>>>>> >
>>>>> > They aren't available at all yet, and it's not clear when they will
>>>>> be available.
>>>>>
>>>>>         The announcement was end of October, but I think I could
>>>>> pre-order right now if I was feeling an urge. You are right though,
>>>>> announced !=3D available or delivered.
>>>>>
>>>>> Regards
>>>>>         Sebastian
>>>>>
>>>>> P.S.: I have a pi400 in use as "desktop" for my oldest kid, this is
>>>>> close to be actually generally usable, I would guess that changing a
>>>>> potential p500 from the pi400's 4GB to 8 GB together with the other
>>>>> imprivements the 5 brings might push it over the threshold into the t=
ruly
>>>>> useful category. Which probably means that either a potential pi500 w=
ill
>>>>> come late and probably with only 4 GB, but let's see how this works o=
ut now
>>>>> that the supply situation is less problematic.
>>>>> And I understand that there are other capable ARM based SoCs for
>>>>> homerouter/desktop duty, I just happen ot have a soft spot for the
>>>>> raspberry project ;)
>>>>>
>>>>> >
>>>>> > David Lang
>>>>>
>>>>> _______________________________________________
>>>>> Cake mailing list
>>>>> Cake@lists.bufferbloat.net
>>>>> https://lists.bufferbloat.net/listinfo/cake
>>>>>
>>>>
>>>>
>>>> --
>>>> Regards,
>>>> Dave Seddon
>>>> +1 415 857 5102
>>>>
>>>
>>>
>>> --
>>> Regards,
>>> Dave Seddon
>>> +1 415 857 5102
>>>
>>
>> --
> Sent from my Android device with K-9 Mail. Please excuse my brevity.
>


--=20
Regards,
Dave Seddon
+1 415 857 5102

--00000000000056286b0607c3bbdc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Oh thanks Sebastian.=C2=A0 I have irtt installed, but=
 it looks like I need to start the server.=C2=A0=C2=A0 That&#39;s easy.=C2=
=A0 Doing it now.<br></div><div><br></div><div>( Incidentally, I did write =
a golang based icmp pinger.=C2=A0 It can ping at very high rates: <a href=
=3D"https://github.com/edgio/icmpengine">https://github.com/edgio/icmpengin=
e</a>.=C2=A0 Really should write one with rust using io_uring... )<br></div=
><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Sun, Oct 15, 2023 at 8:53=E2=80=AFAM Seba=
stian Moeller &lt;<a href=3D"mailto:moeller0@gmx.de">moeller0@gmx.de</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><d=
iv dir=3D"auto">If I recall correctly, flent will use irtt for its delay pr=
obes if available on both ends. Sure fixing fping seems like a good thing l=
onger term, but to get data in quickly, maybe try irtt instead?</div><br><b=
r><div class=3D"gmail_quote"><div dir=3D"auto">On 15 October 2023 17:11:23 =
CEST, dave seddon via Cake &lt;<a href=3D"mailto:cake@lists.bufferbloat.net=
" target=3D"_blank">cake@lists.bufferbloat.net</a>&gt; wrote:</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr"><div>G&#39;day,</div><div><br></div><div>I&#39;ve put more=
 work into a test framework around the qdisc tests, but unfortunately flent=
 doesn&#39;t work easily with Ubuntu LTS ( <a href=3D"https://github.com/to=
hojo/flent/issues/232" target=3D"_blank">https://github.com/tohojo/flent/is=
sues/232</a>, which I think is an issue with flent parsing the fping output=
 ).<br></div><div><br></div><div><div><div>Results and graphs in this sheet=
:<br></div><div><a href=3D"https://docs.google.com/spreadsheets/d/1T59QwEdN=
wJFm4TgDFA_NY98gicOm8ABXKvDsSIMz9ag/edit#gid=3D1203641125" target=3D"_blank=
">https://docs.google.com/spreadsheets/d/1T59QwEdNwJFm4TgDFA_NY98gicOm8ABXK=
vDsSIMz9ag/edit#gid=3D1203641125</a></div></div></div><div><br></div><div>R=
aw results of x2 test runs are here:<br></div><div><a href=3D"https://githu=
b.com/randomizedcoder/qdisc_results/blob/main/qdisc/report.csv" target=3D"_=
blank">https://github.com/randomizedcoder/qdisc_results/blob/main/qdisc/rep=
ort.csv</a></div><div><br></div><div>Each run:<br></div><div><a href=3D"htt=
ps://github.com/randomizedcoder/qdisc_results/blob/main/qdisc/2023-10-13T18=
%3A45%3A45/report.csv" target=3D"_blank">https://github.com/randomizedcoder=
/qdisc_results/blob/main/qdisc/2023-10-13T18%3A45%3A45/report.csv</a></div>=
<div><a href=3D"https://github.com/randomizedcoder/qdisc_results/blob/main/=
qdisc/2023-10-14T14%3A22%3A53/report.csv" target=3D"_blank">https://github.=
com/randomizedcoder/qdisc_results/blob/main/qdisc/2023-10-14T14%3A22%3A53/r=
eport.csv</a></div><div><br></div><div>Full iperf outputs are available too=
, for example: <a href=3D"https://github.com/randomizedcoder/qdisc_results/=
blob/main/qdisc/2023-10-13T18%3A45%3A45/nanopi-r2s/fq_codel/iperf/test/16_i=
perf/stdout" target=3D"_blank">https://github.com/randomizedcoder/qdisc_res=
ults/blob/main/qdisc/2023-10-13T18%3A45%3A45/nanopi-r2s/fq_codel/iperf/test=
/16_iperf/stdout </a><br></div><div><br></div><div>Logs for each run are al=
so available, for example: <a href=3D"https://github.com/randomizedcoder/qd=
isc_results/blob/main/qdisc/2023-10-13T18%3A45%3A45/log.json" target=3D"_bl=
ank">https://github.com/randomizedcoder/qdisc_results/blob/main/qdisc/2023-=
10-13T18%3A45%3A45/log.json</a></div><div><br></div><div>The code repo upda=
ted here: <a href=3D"https://github.com/randomizedcoder/cake" target=3D"_bl=
ank">https://github.com/randomizedcoder/cake</a> , with the<a href=3D"https=
://github.com/randomizedcoder/cake/blob/main/README.md" target=3D"_blank">h=
ttps://github.com/randomizedcoder/cake/blob/main/README.md</a> which explai=
ns how the test work.</div><div>Updated google doc is started here: <a href=
=3D"https://docs.google.com/document/d/1fYKj3BS89aB9drg_DsSq289xSdVQhn1zUJY=
Cj0WuCs0/edit?usp=3Dsharing" target=3D"_blank">https://docs.google.com/docu=
ment/d/1fYKj3BS89aB9drg_DsSq289xSdVQhn1zUJYCj0WuCs0/edit?usp=3Dsharing</a><=
/div><div><br></div><div>Based on the questions on this list earlier, there=
 is a folder with device information for each of the devices<br></div><div>=
<a href=3D"https://github.com/randomizedcoder/cake/tree/main/device_info" t=
arget=3D"_blank">https://github.com/randomizedcoder/cake/tree/main/device_i=
nfo</a></div><div><br></div><div>For example, the Pi4 and the Lichee Pi (ri=
sc-v) hardware layout is here:</div><div>- <a href=3D"https://github.com/ra=
ndomizedcoder/cake/blob/main/device_info/pi4/hwloc-ls-pi4.png" target=3D"_b=
lank">https://github.com/randomizedcoder/cake/blob/main/device_info/pi4/hwl=
oc-ls-pi4.png <br></a></div><div>- <a href=3D"https://github.com/randomized=
coder/cake/blob/main/device_info/lpi4a/hwloc-ls-lpi4a.png" target=3D"_blank=
">https://github.com/randomizedcoder/cake/blob/main/device_info/lpi4a/hwloc=
-ls-lpi4a.png</a><br></div><div><br></div><div>The switch has also been upg=
raded to a Cisco 3750x, which I think based on the &quot;show interface&quo=
t; output has a max queue size of 40 frames.=C2=A0 The test process clears =
the counters before each test and gathers the &quot;show interface&quot; ou=
tput at the end.<br></div><div><br></div><div>The Lichee Pi 4A doesn&#39;t =
look good ( <a href=3D"https://wiki.sipeed.com/hardware/en/lichee/th1520/lp=
4a.html" target=3D"_blank">https://wiki.sipeed.com/hardware/en/lichee/th152=
0/lp4a.html</a> )<br></div><div><br></div><div><img alt=3D"image.png" width=
=3D"578" height=3D"356"><br></div><div>I really wish the flent was working,=
 so I&#39;ll probably see if I can work out the parsing.</div><div><br></di=
v><div>Thanks,</div><div>Dave Seddon<br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 13, 2023 at 10:25=
=E2=80=AFAM dave seddon &lt;<a href=3D"mailto:dave.seddon.ca@gmail.com" tar=
get=3D"_blank">dave.seddon.ca@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>My bad.=C2=A0 =
There&#39;s a bug for this.... Looks like I have to downgrade fping<br></di=
v><div><br></div><div><a href=3D"https://github.com/tohojo/flent/issues/232=
" target=3D"_blank">https://github.com/tohojo/flent/issues/232</a></div><di=
v><a href=3D"https://github.com/schweikert/fping/issues/203" target=3D"_bla=
nk">https://github.com/schweikert/fping/issues/203</a></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 13,=
 2023 at 8:59=E2=80=AFAM dave seddon &lt;<a href=3D"mailto:dave.seddon.ca@g=
mail.com" target=3D"_blank">dave.seddon.ca@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>G=
&#39;day,</div><div><br></div><div>I&#39;ve been working away on automation=
 of the tests.=C2=A0 Pretty close to having much nicer tests with a lot mor=
e details.=C2=A0 I&#39;ve also got the risc-v device working.<br></div><div=
><br></div><div>However, I&#39;ve run into something funny with flent.=C2=
=A0 Flent is not happy with fping or ping.<br></div><div><br></div><div>das=
@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ /usr/bin/sudo /usr/sbin/ip netn=
s exec network101 /usr/bin/flent rrul --output =C2=A0/tmp/qdisc/2023-10-13T=
15:53:21/pi4/noqueue/flent/test/15_flent/flent_pi4_noqueue.png --data-dir /=
tmp/qdisc/2023-10-13T15:53:21/pi4/noqueue/flent/test/15_flent/ --format sum=
mary --plot all_scaled --title-extra 2023-10-13T15:53:21_pi4_noqueue --note=
 2023-10-13T15:53:21_pi4_noqueue --extended-metadata --host 172.17.51.10 --=
length 60 --ipv4 --socket-stats<br>Starting Flent 2.0.1 using Python 3.10.1=
2.<br>Starting rrul test. Expected run time: 70 seconds.<br>WARNING: Found =
fping, but couldn&#39;t parse its output. Not using.=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &lt;-------------=
--- ???<br>ERROR: Runner Ping (ms) ICMP failed check: Cannot parse output o=
f the system ping binary (/usr/bin/ping). Please install fping v3.5+.=C2=A0=
=C2=A0=C2=A0 &lt;----- ??</div><div><br></div><div>das@3rd:~/Downloads/cake=
/cmd/run_qdiscs_tests$ dpkg --list | grep ping<br>ii =C2=A0fping =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 5.1-1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0sends ICMP ECHO_REQUEST packets to net=
work hosts<br>ii =C2=A0iputils-ping =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A03:20211215-1 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0Tools to test the reachabilit=
y of network hosts<br>ii =C2=A0kpartx =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00.8.8-1ubuntu1.22.04.1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0create device mappings for pa=
rtitions<br>ii =C2=A0libharfbuzz0b:amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2.7.4-1ubuntu3.1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0amd64 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0OpenType text shaping engine (shared library)<br>das@3rd:~/Dow=
nloads/cake/cmd/run_qdiscs_tests$ fping --version<br>fping: Version 5.1</di=
v><div>das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ ping -V<br>ping from =
iputils 20211215</div><div><br></div><div>das@3rd:~/Downloads/cake/cmd/run_=
qdiscs_tests$ cat /etc/lsb-release <br>DISTRIB_ID=3DUbuntu<br>DISTRIB_RELEA=
SE=3D22.04<br>DISTRIB_CODENAME=3Djammy<br>DISTRIB_DESCRIPTION=3D&quot;Ubunt=
u 22.04.3 LTS&quot;</div><div><br></div><div>I did install via &quot;apt in=
stall fping&quot;<br></div><div><br></div><div>Any thoughts please?</div><d=
iv><br></div><div>Kind regards,</div><div>Dave<br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 28, 202=
3 at 6:27=E2=80=AFAM Sebastian Moeller via Cake &lt;<a href=3D"mailto:cake@=
lists.bufferbloat.net" target=3D"_blank">cake@lists.bufferbloat.net</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
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
</blockquote></div><br clear=3D"all"></blockquote></div><div dir=3D"auto"><=
div>-- <br>Sent from my Android device with K-9 Mail. Please excuse my brev=
ity.</div></div></div></blockquote></div><br clear=3D"all"><br><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div=
>Regards,<br></div>Dave Seddon<br>+1 415 857 5102<br></div></div></div></di=
v></div></div>

--00000000000056286b0607c3bbdc--

--===============3271761418627532817==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3271761418627532817==--
