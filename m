Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D842D3ABAC
	for <lists+cake@lfdr.de>; Mon, 19 Jan 2026 15:22:55 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id EDA87BD405F;
	Mon, 19 Jan 2026 15:22:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1768832573;
	bh=Hx7cHYAa8dnmvEbgYW9Q7edIuojqkVtT0EhsPMfXPuI=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=lwcBi+M15otPW1tVU/7WvHWA4AdUshxcddvE383SFNI+jrqkHIZ5zLqnwkfED5VWG
	 93T6hC6GB16+4atbOUQyiEXLfAWd53pEAiQfxjs+RI+z72rQMpkEhmOE3SK/2Jx5xO
	 aSSMRrVocfVgOB3JiGapE876nWXeSa4fV+mwB2Mwvyx9txCTbOe+DxcLUiNZ0ceu1p
	 wEUeAoVDKLNqmF1NAYS9LJMTu7dMgJYdjVB12KDgpbnILSWmYKXKHTH60fxM+F5jC/
	 eQLFBrIGUMB7YbUD6U69Std/Y3rXamlxL2p8aFrW0cwHdEWhz7GHw2xQcT97eEYZ16
	 DCLReWRsqTR8A==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1768832573;
 b=X55bQDsTDhrv3+ojsLmMv95GebMD7/Pr2RweWsuOyRUDUXDvAzAb2zwci5cLLtuESIGU3
 VWw/wd6dlkhxz21n95iw0XdmvZYC6o8AKUGJPjBTnloA4z7YzlGkvBIngqgZiYqvzIM6vrj
 bNbXG3SJer15meQPxR/9/DPVAzjMxOA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1768832573; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=SokyF6S0jnuEsyiS5djF+OrTM9D/NqI5PAOJDK2TMvk=;
 b=PUIow1pyWa04CNuZqBrS6xIUfNlH/vebxddjrQx1Sz8ZSsmfjnxUCbRx9oJy0Z0pSUbxg
 miM6OOdmYtZGX/MO5vPxZ95b7UTYOa2gd0deQYB0iyNjfmpa0WM6E2EKA2K1or4dAUt4tq/
 g5heYHgYtnjgnYf37s5WgE2lTufBD+I=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org;
 arc=none;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=quarantine
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by mail.toke.dk (Postfix) with ESMTPS id F323DBD4047
	for <cake@lists.bufferbloat.net>; Mon, 19 Jan 2026 15:22:50 +0100 (CET)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 43442600C3;
	Mon, 19 Jan 2026 14:22:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB602C116C6;
	Mon, 19 Jan 2026 14:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768832569;
	bh=SkF1fRiMvz80DrYwLS5zkrf4jjOADfRiN8RZM2e8wWc=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=Nh6dozxT2RE2Dr1wXAvtWqW/T4XORVZPoHAfV4iagqisvSvrnesQnZFIUMR63tfD0
	 RpngvBjEDo8Cw6dv7Cev5nAiILQ+sGggpAlnIrWuqpzNndSFXD86mGeJutP+10J9w7
	 UtHuP7YiuLlDw3M1DvI+KGWyT1XsEUPAfyK25gHNmdC0VWIHCW8pf1iN3YWhlvfybD
	 s+1HUxevjXaI4O0uweDXVL1EgC05rmgs2MOzCTa2cEMkhG8qlxjqVPWci+B3ROCw+x
	 JQQa/RYJYMwNpY02IgllZxkHiBY0Ned2aSkjPVmXAZTWN/jytfRRxiEw1mQlgPoV9d
	 WLiVTw8bXLOiw==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 F2A993A55FAF;
	Mon, 19 Jan 2026 14:19:19 +0000 (UTC)
MIME-Version: 1.0
Message-Id: 
 <176883235852.1426077.2358286619749506519.git-patchwork-notify@kernel.org>
Date: Mon, 19 Jan 2026 14:19:18 +0000
References: <20260113143157.2581680-1-toke@redhat.com>
In-Reply-To: <20260113143157.2581680-1-toke@redhat.com>
To: 
 =?utf-8?b?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+?=@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org
Cc: toke@toke.dk, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 jiri@resnulli.us, pabeni@redhat.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org,
 cake@lists.bufferbloat.net, netdev@vger.kernel.org
Message-ID-Hash: E6GVU3CAZM23M5KLSLHJ7PAHAKZIPP3D
X-Message-ID-Hash: E6GVU3CAZM23M5KLSLHJ7PAHAKZIPP3D
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next] net/sched: cake: avoid separate allocation of
 struct cake_sched_config
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/176883235852.1426077.2358286619749506519.git-patchwork-notify@kernel.org/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: patchwork-bot+netdevbpf--- via Cake <cake@lists.bufferbloat.net>
Reply-To: patchwork-bot+netdevbpf@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 13 Jan 2026 15:31:56 +0100 you wrote:
> Paolo pointed out that we can avoid separately allocating struct
> cake_sched_config even in the non-mq case, by embedding it into struct
> cake_sched_data. This reduces the complexity of the logic that swaps the
> pointers and frees the old value, at the cost of adding 56 bytes to the
> latter. Since cake_sched_data is already almost 17k bytes, this seems
> like a reasonable tradeoff.
> 
> [...]

Here is the summary with links:
  - [net-next] net/sched: cake: avoid separate allocation of struct cake_sched_config
    https://git.kernel.org/netdev/net-next/c/2a85541d95f7

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
