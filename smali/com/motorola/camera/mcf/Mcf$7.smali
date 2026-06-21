.class public final Lcom/motorola/camera/mcf/Mcf$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public val$obj1:Ljava/lang/Object;

.field public val$obj2:Ljava/lang/Object;

.field public val$obj3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;Lcom/motorola/camera/CameraKpi;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$7;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj3:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/appbar/HeaderBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$7;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj3:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, Lcom/motorola/camera/mcf/Mcf$7;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lcom/motorola/camera/mcf/Mcf$7;->$r8$classId:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj3:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/appbar/HeaderBehavior;

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj2:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v3, v1, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    iget-boolean p0, v2, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj2:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/CameraKpi;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_common/zziv;->zzbA:Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj3:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v4, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v4, Lcom/google/zxing/Result;

    iput-object v3, v4, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    iget-object v3, v4, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzla;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzla;->zzd:Ljava/lang/String;

    sget v4, Lcom/google/android/gms/internal/mlkit_vision_common/zze;->$r8$clinit:I

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v3, "NA"

    :cond_3
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzc:Ljava/lang/String;

    iput-object v5, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzd:Ljava/lang/String;

    iput-object v5, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzb:Ljava/lang/String;

    const-class v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    monitor-enter v5

    :try_start_0
    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_4

    monitor-exit v5

    goto :goto_4

    :cond_4
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    new-instance v7, Landroidx/core/os/LocaleListCompat;

    new-instance v8, Landroidx/core/os/LocaleListPlatformWrapper;

    invoke-direct {v8, v6}, Landroidx/core/os/LocaleListPlatformWrapper;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v7, v8}, Landroidx/core/os/LocaleListCompat;-><init>(Landroidx/core/os/LocaleListPlatformWrapper;)V

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    move-object v8, v6

    move v6, v2

    :goto_1
    iget-object v9, v7, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListPlatformWrapper;

    iget-object v9, v9, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v9}, Landroid/os/LocaleList;->size()I

    move-result v9

    if-ge v2, v9, :cond_8

    iget-object v9, v7, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListPlatformWrapper;

    iget-object v9, v9, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v9, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v9

    sget-object v10, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->zza:Lcom/tinder/StateMachine;

    invoke-virtual {v9}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v10, v6, 0x1

    array-length v11, v8

    if-ge v11, v10, :cond_7

    shr-int/lit8 v12, v11, 0x1

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    if-ge v11, v10, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v11

    add-int/2addr v11, v11

    :cond_5
    if-gez v11, :cond_6

    const v11, 0x7fffffff

    :cond_6
    invoke-static {v8, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    :cond_7
    aput-object v9, v8, v6

    add-int/lit8 v2, v2, 0x1

    move v6, v10

    goto :goto_1

    :cond_8
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzn;

    if-nez v6, :cond_9

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzu;

    :goto_2
    move-object v6, v2

    goto :goto_3

    :cond_9
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;

    invoke-direct {v2, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;-><init>(I[Ljava/lang/Object;)V

    goto :goto_2

    :goto_3
    sput-object v6, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    :goto_4
    iput-object v6, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zze:Ljava/util/AbstractCollection;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzh:Ljava/lang/Boolean;

    iput-object v3, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzd:Ljava/lang/String;

    iput-object p0, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzc:Ljava/lang/String;

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzh:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_a

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzh:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_5

    :cond_a
    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object p0

    :goto_5
    iput-object p0, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzf:Ljava/lang/String;

    const/16 p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzj:Ljava/lang/Integer;

    iget p0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzj:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzk:Ljava/lang/Integer;

    iput-object v4, v1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zze:Lcom/google/android/gms/internal/mlkit_vision_common/zzmf;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmf;->zza(Lcom/motorola/camera/CameraKpi;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj2:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    iget-object v3, v2, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->backendName:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj3:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    sget-object v4, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->LOGGER:Ljava/util/logging/Logger;

    const-string v5, "Transport backend \'"

    :try_start_3
    iget-object v6, v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->backendRegistry:Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;

    invoke-virtual {v6, v3}, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->get(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/TransportBackend;

    move-result-object v6

    if-nez v6, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not registered"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :catch_0
    move-exception p0

    goto :goto_6

    :cond_b
    check-cast v6, Lcom/google/android/datatransport/cct/CctTransportBackend;

    invoke-virtual {v6, p0}, Lcom/google/android/datatransport/cct/CctTransportBackend;->decorate(Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;)Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    move-result-object p0

    iget-object v3, v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->guard:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    new-instance v5, Lcom/google/zxing/Result;

    invoke-direct {v5, v0, v2, p0, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error scheduling event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_7
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj3:Ljava/lang/Object;

    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj2:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    const-string v3, "Updating proxies: (BatteryNotLowProxy ("

    :try_start_4
    const-string v4, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    invoke-virtual {p0, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {p0, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "KEY_NETWORK_STATE_PROXY_ENABLED"

    invoke-virtual {p0, v7, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), BatteryChargingProxy ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), StorageNotLowProxy ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), NetworkStateProxy ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v3

    sget-object v7, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v7, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryNotLowProxy;

    invoke-static {v1, v2, v4}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy;

    invoke-static {v1, v2, v5}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$StorageNotLowProxy;

    invoke-static {v1, v2, v6}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy;

    invoke-static {v1, v2, p0}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw p0

    :pswitch_3
    :try_start_5
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    check-cast v0, Landroidx/core/provider/FontRequestWorker$1;

    invoke-virtual {v0}, Landroidx/core/provider/FontRequestWorker$1;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_8

    :catch_1
    const/4 v0, 0x0

    :goto_8
    iget-object v3, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj2:Ljava/lang/Object;

    check-cast v3, Landroidx/core/provider/FontRequestWorker$2;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj3:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$8;

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {p0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmFullFrameListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    if-eqz v0, :cond_c

    :try_start_6
    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/shared/PostProcTransferData;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;

    invoke-virtual {v0, v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->onTransferToJMS(Lcom/motorola/camera/mcf/McfInstanceIdentifier;Ljava/lang/String;Lcom/motorola/camera/shared/PostProcTransferData;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_9

    :catch_2
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "postFullFrameEventFromNative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
