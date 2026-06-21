.class public final synthetic Lcom/motorola/camera/utility/InAppUpdateUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/utility/InAppUpdateUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/utility/InAppUpdateUtils;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/utility/InAppUpdateUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/utility/InAppUpdateUtils;

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->getAppUpdateManager()Lcom/google/android/play/core/appupdate/zzg;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->context:Landroid/app/Activity;

    invoke-static {}, Lcom/google/android/play/core/appupdate/zzx;->defaultOptions()Lcom/google/android/play/core/appupdate/zzx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_4

    iget-object p0, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzl:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_4

    iget-boolean v2, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzp:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzp:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v0

    :goto_1
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const-string v0, "InAppUpdateUtils"

    iget v1, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzc:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    invoke-static {}, Lcom/google/android/play/core/appupdate/zzx;->defaultOptions()Lcom/google/android/play/core/appupdate/zzx;

    iget-object p1, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzl:Landroid/app/PendingIntent;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_6

    const-string p1, "appUpdate - Retry update successful"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->startForInAppUpdate()V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Landroidx/room/InvalidationTracker$implementation$1;

    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    sget-object v1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->RETRY_UPDATE_FAILED:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;I)V

    invoke-virtual {p0, p1}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "appUpdate - Retry update failed"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->getAppUpdateManager()Lcom/google/android/play/core/appupdate/zzg;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/google/android/play/core/appupdate/zzg;->zzb:Lcom/google/android/play/core/appupdate/zzc;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v2, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/google/common/base/Joiner;

    const-string/jumbo v3, "registerListener"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Lcom/google/common/base/Joiner;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/google/android/play/core/appupdate/zzc;->zzb:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/android/play/core/appupdate/zzc;->zze()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_LAST_CHECK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget v0, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzd:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/16 v2, 0xb

    if-eq v0, v2, :cond_d

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_LAST_AVAILABLE_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_INSTALLED_NEW_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v5, 0x98a8f4

    if-ne v3, v5, :cond_8

    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Landroidx/room/InvalidationTracker$implementation$1;

    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    sget-object v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->UPDATE_STATE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;I)V

    invoke-virtual {p0, p1}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_8
    :goto_5
    iget v3, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzc:I

    if-ne v3, v1, :cond_c

    invoke-static {}, Lcom/google/android/play/core/appupdate/zzx;->defaultOptions()Lcom/google/android/play/core/appupdate/zzx;

    iget-object v1, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzl:Landroid/app/PendingIntent;

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_c

    iget p1, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzb:I

    const-string v1, "InAppUpdateUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "appUpdate - available version: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v1, :cond_b

    :goto_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_TIMES_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_b
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_TIMES_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_f

    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Landroidx/room/InvalidationTracker$implementation$1;

    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    sget-object v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->UPDATE_AVAILABLE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    invoke-direct {p1, v0, v4}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;I)V

    invoke-virtual {p0, p1}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_c
    iget-object p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Landroidx/room/InvalidationTracker$implementation$1;

    new-instance v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    sget-object v1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->UPDATE_UNAVAILABLE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;I)V

    invoke-virtual {p1, v0}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    goto :goto_8

    :cond_d
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Landroidx/room/InvalidationTracker$implementation$1;

    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    sget-object v1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->UPDATE_STATE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    invoke-direct {p1, v1, v0}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;I)V

    invoke-virtual {p0, p1}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "InAppUpdateUtils"

    const-string p1, "appUpdate - resume update download completed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_e
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Landroidx/room/InvalidationTracker$implementation$1;

    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    sget-object v1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->UPDATE_STATE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    invoke-direct {p1, v1, v0}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;I)V

    invoke-virtual {p0, p1}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "InAppUpdateUtils"

    const-string p1, "appUpdate - resume update downloading"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
