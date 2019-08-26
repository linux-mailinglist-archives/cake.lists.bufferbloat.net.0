Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id C63719CAAE
	for <lists+cake@lfdr.de>; Mon, 26 Aug 2019 09:35:21 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3C86D3CB38;
	Mon, 26 Aug 2019 03:35:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566804920;
	bh=ofH/JqiiqQYfChQRDb4HbzCntFLN43gSS2x3IhOsUsg=;
	h=From:To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From;
	b=DaE2ZorH0DfwQGJVuBzTIXNDSdWVv/G4dt0Z2WUZbDBXFb4erTJGO3LDoqqCDVwEh
	 pV6H/j5Zy2QdaA0pbeM0sJYYhxkKgRc45bIC77Ew59vNx9+ONFoOIoF3k7Fj7McL57
	 fSbxweS/uWSmjUgG3DFK421YaFJslD8pnS0tr87lcB389BvfPNReShC6cup/8TRAyK
	 wEv2xeyQ53jJHKvp/moybiBnXsxB+ycpz8A3YaJvB+eoHnM+ENUCzTSYZKOU7poPxr
	 qAiGlbG3wF+6NXKANppy11Kk1BE9diSfRT4QBPOFaAuprKizuDTeZnmI4SDMTrWSGN
	 iM45cUkW2MI3w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id F04663CB36
 for <cake@lists.bufferbloat.net>; Mon, 26 Aug 2019 03:35:18 -0400 (EDT)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B858B86679
 for <cake@lists.bufferbloat.net>; Mon, 26 Aug 2019 07:35:17 +0000 (UTC)
Received: by mail-ed1-f70.google.com with SMTP id d64so9118658edd.1
 for <cake@lists.bufferbloat.net>; Mon, 26 Aug 2019 00:35:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:references:date:message-id
 :mime-version;
 bh=9sGPDvWl+fyzPFsAk3xs2aX8vVRA7urKHCgRoquXdAE=;
 b=UHB7WmJWSGGZadLnKV8rBBabDv132OT7E97629undFf4sBlBnrxpmJJ8072f4w3C0s
 5fVFRqO/mlyKvDE9uudIo5c2KVU6n8dIkweWYQ7U14ek5iDO10UFsflQH3lFIU7sY7l9
 BWx3RX/QkVAfbPq9A5gHxHW1VjK9pN0ERc1yrnT9qcacmjcBS7MstXAOae3A4AE3DvFQ
 zOiEIxVwXdJXW6CB67Y3vhFXWk348nLlJeWfGxwEA6CxaCRMs0N6db4VrgWqb3NUF8pA
 p+Mxfn77uqDnrc1bjeVd4T85+R92duD240NmxYDRKYjrDhol8Q+3REqD/LQDg5xLsc1V
 aHoA==
X-Gm-Message-State: APjAAAUaXUc7sZyNDkyGf1IHdv8vEQe5iPn0uDshyQ7YgQKqClNKd0A1
 3OjDQnmCcFh2WXGZ2MDP3LDyBTiWxfVBzVapbggRvRxuDsOGHDzm/xyStIh4i/+Ozmb2U5RvY2O
 RxWQvf2jfoFtxV4MLmCJGXg==
X-Received: by 2002:a50:871c:: with SMTP id i28mr17193679edb.29.1566804916568; 
 Mon, 26 Aug 2019 00:35:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyVjFYDLfSVlZJjfJ2eBfqvtEP5KFpHeg04w/RsohA4GmANa2jyPWRIp1XQynYjCsSWMgHblA==
X-Received: by 2002:a50:871c:: with SMTP id i28mr17193674edb.29.1566804916411; 
 Mon, 26 Aug 2019 00:35:16 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id r10sm1093562edp.25.2019.08.26.00.35.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 00:35:15 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id E8DEC181C2E; Mon, 26 Aug 2019 09:35:14 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: bloat@lists.bufferbloat.net, cake@lists.bufferbloat.net
References: <9cbefe10-b172-ae2a-0ac7-d972468eb7a2@gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 26 Aug 2019 09:35:14 +0200
Message-ID: <87h864l6q5.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="=-=-="
Subject: [Cake] Fwd: Re: Unable to create htb tc classes more than 64K
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
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--=-=-=
Content-Type: text/plain

Turns out that with the "earliest departure time" support in sched_fq,
it is now possible to write a shaper in eBPF, thus avoiding the global
qdisc lock in sched_htb. This is pretty cool, if you ask me! :)

-Toke


--=-=-=
Content-Type: message/rfc822
Content-Disposition: inline

Delivered-To: thoiland@gapps.redhat.com
Received: by 2002:a2e:878d:0:0:0:0:0 with SMTP id n13csp4081304lji;
        Sun, 25 Aug 2019 23:33:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzWr9JH7yQq/0SpS5H4whLnLXpcQINeteatpf2vhrd/Au17orvZ9f6xK4DWtbMfJ9g7hOhg
X-Received: by 2002:a0c:fba4:: with SMTP id m4mr14141117qvp.136.1566801192174;
        Sun, 25 Aug 2019 23:33:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566801192; cv=none;
        d=google.com; s=arc-20160816;
        b=Ai3h1GVyGzz1cGJpne95fg3kLRKUG/+HC/cGvh8AU6wkqL5Jo7oHH8rkeyKk24a1n1
         O5dqWy1piCbkF7Cgiq6nprk0y3q4dxo+uGakdk8k8BAHqeLIOkErVxnmkq2DRT5DcY5M
         fvweEQ4GDPCnWnbpQm+Y1IIGCA1X65e0Hqid2edOv9l5lEgC0Ue+FGEPHMuR5K/eRY96
         AAGQApUwub5js8HvYpoDXTZDsvoIki8skPbHGx1DPjJ6k9QppkNQ0PrVHJAyJiRx2ex5
         KoglDCa5S6ovZFqwPJWu2+JOAt15NxoGfTiSBftd1XRpoJRE3YPvf11cAFnbG3sRgR38
         PwBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-id:precedence:sender:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature
         :delivered-to;
        bh=iOQM757QAYxCOX3hrCBVbTdwFWv0y68ZG1Z8cM2cfis=;
        b=gmOsAEMu5FJ6y0krPVhH7KQgiS4HTOtjLDOIINicw8eWPw6GwZmeWezJeiDLQgX08F
         0iyHMULJ5WdhLxXlKMZc4UdIgb/6zNMK5oSDnKQTP5x2M+UyeSM9YfsbrB5DxcUwH41f
         LGm2Gx/LQDblJnNHz5E9WuIhuE+7T0+bc1qhd0WSh6CKywFx2s483P1FR1EBJEpZInFE
         d0CyMlUDSoeU4yKdmwCskworAKU3ASWggpmF07k5fJa5YsZmNNUzsDd96thETcIL+rA3
         5JcszIjerdWo+v0JclowL8unbM9HLfwSnx3faZ53o/Zc4FSPUc7VLiZkzOtyoz5rgvm3
         JzHw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YlqVEOnt;
       spf=pass (google.com: best guess record for domain of netdev-owner@vger.kernel.org designates 209.132.180.67 as permitted sender) smtp.mailfrom=netdev-owner@vger.kernel.org
Return-Path: <netdev-owner@vger.kernel.org>
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by mx.google.com with ESMTPS id d41si7220260qve.113.2019.08.25.23.33.11
        for <thoiland@gapps.redhat.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Aug 2019 23:33:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of netdev-owner@vger.kernel.org designates 209.132.180.67 as permitted sender) client-ip=209.132.180.67;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YlqVEOnt;
       spf=pass (google.com: best guess record for domain of netdev-owner@vger.kernel.org designates 209.132.180.67 as permitted sender) smtp.mailfrom=netdev-owner@vger.kernel.org
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 4E8BA883BA
	for <thoiland@gapps.redhat.com>; Mon, 26 Aug 2019 06:33:11 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 41A535B6A5; Mon, 26 Aug 2019 06:33:11 +0000 (UTC)
Delivered-To: toke@redhat.com
Received: from mx1.redhat.com (ext-mx22.extmail.prod.ext.phx2.redhat.com [10.5.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 257E75D6A5;
	Mon, 26 Aug 2019 06:33:00 +0000 (UTC)
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mx1.redhat.com (Postfix) with ESMTP id EE2FE189DACC;
	Mon, 26 Aug 2019 06:32:57 +0000 (UTC)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729721AbfHZGc4 (ORCPT <rfc822;eperezma@redhat.com> + 65 others);
        Mon, 26 Aug 2019 02:32:56 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:36934 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725385AbfHZGc4 (ORCPT
        <rfc822;netdev@vger.kernel.org>); Mon, 26 Aug 2019 02:32:56 -0400
Received: by mail-wm1-f68.google.com with SMTP id d16so14632194wme.2;
        Sun, 25 Aug 2019 23:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=iOQM757QAYxCOX3hrCBVbTdwFWv0y68ZG1Z8cM2cfis=;
        b=YlqVEOnteRAXr3AyXxEvf5T8pIkl9Aqp5LydmGjEw+Kh9BFPlP5+6PPUU+baYGL/kW
         QHy/QL9HDZUuD9uKYurUKaB47D7CaCwJVexYZafYe6Bx86SdG4X9a5j6rNngwtxPwNeG
         28uDavKdKPhnBis6TnUUO/bIzMJTFW6oO+2BQZKplwQ3Ywao+NqzaX3kH22Y2dFvIDcq
         FAOWTn2yheq0H0br1S06jpiNk3Sep+qptt5vHoR7Kp2ivBsa8wFLRkxMm3wRstVbux1d
         DJvBQDAvbgvquFSDqKEE1sukGLR38norAhfKPq8y3c0nYXWPOxrrDczU6+RAwj7AZzOg
         5Mbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iOQM757QAYxCOX3hrCBVbTdwFWv0y68ZG1Z8cM2cfis=;
        b=PZkwHMW25NGYUZUacJQauj6LjTv2dt9XUGFQUPstzq9Psokup4mw2rJ/frJXNUgPdX
         s5x0n1DIZaYVoQ6s++FyG2mQBmzDgMlYXk6OZPJYtxVucUnD9W9VL62LtouUlPyZ3DF4
         jVzfFzpG9c5GpMysMzaSJ01FoZrAn0N4fsYtd6LDKcDu5afyv9T73pCus+IJzzo8efpl
         1Qk8EnvoAuwSEzD3gDF7jnCv11VhH5kQVC3PXYlORp9GjvxoIuCdGUkn/IEAxQXyBCI3
         1LMltCo8IFUyhOAvImgQA4TeLb0aqMful5IjAm4CmEifnD0+X1evkCf5SNTZn85VQxtb
         jzdg==
X-Gm-Message-State: APjAAAWhTvEzMM++H+egW9PlW0gd93q2uTq+qRNB05gnmaS+1J5L95n5
        ca2HfPhifP6A9bo4APR1ZBffLFrg
X-Received: by 2002:a05:600c:48b:: with SMTP id d11mr20559520wme.124.1566801172751;
        Sun, 25 Aug 2019 23:32:52 -0700 (PDT)
Received: from [192.168.8.147] (234.173.185.81.rev.sfr.net. [81.185.173.234])
        by smtp.gmail.com with ESMTPSA id l15sm9151503wru.56.2019.08.25.23.32.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Aug 2019 23:32:52 -0700 (PDT)
Subject: Re: Unable to create htb tc classes more than 64K
To: Cong Wang <xiyou.wangcong@gmail.com>,
        Akshat Kakkar <akshat.1984@gmail.com>
Cc: Anton Danilov <littlesmilingcloud@gmail.com>,
        NetFilter <netfilter-devel@vger.kernel.org>,
        lartc <lartc@vger.kernel.org>, netdev <netdev@vger.kernel.org>
References: <CAA5aLPhf1=wzQG0BAonhR3td-RhEmXaczug8n4hzXCzreb+52g@mail.gmail.com>
 <CAM_iQpVyEtOGd5LbyGcSNKCn5XzT8+Ouup26fvE1yp7T5aLSjg@mail.gmail.com>
 <CAA5aLPiqyhnWjY7A3xsaNJ71sDOf=Rqej8d+7=_PyJPmV9uApA@mail.gmail.com>
 <CAM_iQpUH6y8oEct3FXUhqNekQ3sn3N7LoSR0chJXAPYUzvWbxA@mail.gmail.com>
 <CAA5aLPjzX+9YFRGgCgceHjkU0=e6x8YMENfp_cC9fjfHYK3e+A@mail.gmail.com>
 <CAM_iQpXBhrOXtfJkibyxyq781Pjck-XJNgZ-=Ucj7=DeG865mw@mail.gmail.com>
 <CAA5aLPjO9rucCLJnmQiPBxw2pJ=6okf3C88rH9GWnh3p0R+Rmw@mail.gmail.com>
 <CAM_iQpVtGUH6CAAegRtTgyemLtHsO+RFP8f6LH2WtiYu9-srfw@mail.gmail.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <9cbefe10-b172-ae2a-0ac7-d972468eb7a2@gmail.com>
Date: Mon, 26 Aug 2019 08:32:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
In-Reply-To: <CAM_iQpVtGUH6CAAegRtTgyemLtHsO+RFP8f6LH2WtiYu9-srfw@mail.gmail.com>
Content-Language: en-US
Sender: netdev-owner@vger.kernel.org
Precedence: bulk
List-ID: <netdev.vger.kernel.org>
X-Mailing-List: netdev@vger.kernel.org
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238 matched, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.63]); Mon, 26 Aug 2019 06:32:59 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.63]); Mon, 26 Aug 2019 06:32:59 +0000 (UTC) for IP:'209.132.180.67' DOMAIN:'vger.kernel.org' HELO:'vger.kernel.org' FROM:'netdev-owner@vger.kernel.org' RCPT:''
X-RedHat-Spam-Score: -5.625  (DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_NONE) 209.132.180.67 vger.kernel.org 209.132.180.67 vger.kernel.org <netdev-owner@vger.kernel.org>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.63
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Mon, 26 Aug 2019 06:33:11 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain



On 8/25/19 7:52 PM, Cong Wang wrote:
> On Wed, Aug 21, 2019 at 11:00 PM Akshat Kakkar <akshat.1984@gmail.com> wrote:
>>
>> On Thu, Aug 22, 2019 at 3:37 AM Cong Wang <xiyou.wangcong@gmail.com> wrote:
>>>> I am using ipset +  iptables to classify and not filters. Besides, if
>>>> tc is allowing me to define qdisc -> classes -> qdsic -> classes
>>>> (1,2,3 ...) sort of structure (ie like the one shown in ascii tree)
>>>> then how can those lowest child classes be actually used or consumed?
>>>
>>> Just install tc filters on the lower level too.
>>
>> If I understand correctly, you are saying,
>> instead of :
>> tc filter add dev eno2 parent 100: protocol ip prio 1 handle
>> 0x00000001 fw flowid 1:10
>> tc filter add dev eno2 parent 100: protocol ip prio 1 handle
>> 0x00000002 fw flowid 1:20
>> tc filter add dev eno2 parent 100: protocol ip prio 1 handle
>> 0x00000003 fw flowid 2:10
>> tc filter add dev eno2 parent 100: protocol ip prio 1 handle
>> 0x00000004 fw flowid 2:20
>>
>>
>> I should do this: (i.e. changing parent to just immediate qdisc)
>> tc filter add dev eno2 parent 1: protocol ip prio 1 handle 0x00000001
>> fw flowid 1:10
>> tc filter add dev eno2 parent 1: protocol ip prio 1 handle 0x00000002
>> fw flowid 1:20
>> tc filter add dev eno2 parent 2: protocol ip prio 1 handle 0x00000003
>> fw flowid 2:10
>> tc filter add dev eno2 parent 2: protocol ip prio 1 handle 0x00000004
>> fw flowid 2:20
> 
> 
> Yes, this is what I meant.
> 
> 
>>
>> I tried this previously. But there is not change in the result.
>> Behaviour is exactly same, i.e. I am still getting 100Mbps and not
>> 100kbps or 300kbps
>>
>> Besides, as I mentioned previously I am using ipset + skbprio and not
>> filters stuff. Filters I used just to test.
>>
>> ipset  -N foo hash:ip,mark skbinfo
>>
>> ipset -A foo 10.10.10.10, 0x0x00000001 skbprio 1:10
>> ipset -A foo 10.10.10.20, 0x0x00000002 skbprio 1:20
>> ipset -A foo 10.10.10.30, 0x0x00000003 skbprio 2:10
>> ipset -A foo 10.10.10.40, 0x0x00000004 skbprio 2:20
>>
>> iptables -A POSTROUTING -j SET --map-set foo dst,dst --map-prio
> 
> Hmm..
> 
> I am not familiar with ipset, but it seems to save the skbprio into
> skb->priority, so it doesn't need TC filter to classify it again.
> 
> I guess your packets might go to the direct queue of HTB, which
> bypasses the token bucket. Can you dump the stats and check?

With more than 64K 'classes' I suggest to use a single FQ qdisc [1], and
an eBPF program using EDT model (Earliest Departure Time)

The BPF program would perform the classification, then find a data structure
based on the 'class', and then update/maintain class virtual times and skb->tstamp

TBF = bpf_map_lookup_elem(&map, &classid);

uint64_t now = bpf_ktime_get_ns();
uint64_t time_to_send = max(TBF->time_to_send, now);

time_to_send += (u64)qdisc_pkt_len(skb) * NSEC_PER_SEC / TBF->rate;
if (time_to_send > TBF->max_horizon) {
    return TC_ACT_SHOT;
}
TBF->time_to_send = time_to_send;
skb->tstamp = max(time_to_send, skb->tstamp);
if (time_to_send - now > TBF->ecn_horizon)
    bpf_skb_ecn_set_ce(skb);
return TC_ACT_OK;

tools/testing/selftests/bpf/progs/test_tc_edt.c shows something similar.


[1]  MQ + FQ if the device is multi-queues.

   Note that this setup scales very well on SMP, since we no longer are forced
 to use a single HTB hierarchy (protected by a single spinlock)


--=-=-=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--=-=-=--
