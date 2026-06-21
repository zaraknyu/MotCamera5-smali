.class public final Lcom/google/android/gms/common/api/internal/GoogleApiManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final zaa:Lcom/google/android/gms/common/api/Status;

.field public static final zab:Lcom/google/android/gms/common/api/Status;

.field public static final zac:Ljava/lang/Object;

.field public static zad:Lcom/google/android/gms/common/api/internal/GoogleApiManager;


# instance fields
.field public zae:J

.field public zaf:Z

.field public zag:Lcom/google/android/gms/common/internal/TelemetryData;

.field public zah:Lcom/google/android/gms/common/internal/service/zao;

.field public final zai:Landroid/content/Context;

.field public final zaj:Lcom/google/android/gms/common/GoogleApiAvailability;

.field public final zak:Landroidx/room/concurrent/FileLock;

.field public final zal:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final zam:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final zan:Ljava/util/concurrent/ConcurrentHashMap;

.field public final zap:Landroidx/collection/ArraySet;

.field public final zaq:Landroidx/collection/ArraySet;

.field public final zar:Lcom/google/android/gms/internal/base/zau;

.field public volatile zas:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zab:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zac:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->zab:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zal:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x5

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v2, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Landroidx/collection/ArraySet;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroidx/collection/ArraySet;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Landroidx/collection/ArraySet;

    new-instance v2, Landroidx/collection/ArraySet;

    invoke-direct {v2, v4}, Landroidx/collection/ArraySet;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroidx/collection/ArraySet;

    iput-boolean v3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas:Z

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/base/zau;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p0, v3}, Lcom/google/android/gms/internal/base/zau;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;I)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj:Lcom/google/android/gms/common/GoogleApiAvailability;

    new-instance p2, Landroidx/room/concurrent/FileLock;

    const/16 v0, 0x13

    invoke-direct {p2, v0}, Landroidx/room/concurrent/FileLock;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/common/util/DeviceProperties;->zzj:Ljava/lang/Boolean;

    if-nez p2, :cond_0

    const-string p2, "android.hardware.type.automotive"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/google/android/gms/common/util/DeviceProperties;->zzj:Ljava/lang/Boolean;

    :cond_0
    sget-object p1, Lcom/google/android/gms/common/util/DeviceProperties;->zzj:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas:Z

    :cond_1
    const/4 p0, 0x6

    invoke-virtual {v2, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static zaF(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/ApiKey;->zab:Lcom/tinder/StateMachine;

    iget-object p0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "API: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. Connection failed with: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    return-object v0
.end method

.method public static zak(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;
    .locals 5

    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zac:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zad:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/common/internal/zzs;->zzb$1:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/google/android/gms/common/internal/zzs;->zza:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "GoogleApiHandler"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/common/internal/zzs;->zza:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    sget-object v2, Lcom/google/android/gms/common/internal/zzs;->zza:Landroid/os/HandlerThread;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v3, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa:Ljava/lang/Object;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zad:Lcom/google/android/gms/common/api/internal/GoogleApiManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zad:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    monitor-exit v0

    return-object p0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0x493e0

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p0, "Unknown message id: "

    const-string p1, "GoogleApiManager"

    invoke-static {p0, v0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    return v4

    :pswitch_0
    iput-boolean v4, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Z

    return v6

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zace;

    iget-wide v0, p1, Lcom/google/android/gms/common/api/internal/zace;->zac:J

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/internal/TelemetryData;

    iget v1, p1, Lcom/google/android/gms/common/api/internal/zace;->zab:I

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zace;->zaa:Lcom/google/android/gms/common/internal/MethodInvocation;

    filled-new-array {p1}, [Lcom/google/android/gms/common/internal/MethodInvocation;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(Ljava/util/List;I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/service/zao;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->zaa:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    new-instance v2, Lcom/google/android/gms/common/internal/service/zao;

    sget-object v3, Lcom/google/android/gms/common/internal/service/zao;->zae:Lcom/tinder/StateMachine;

    sget-object v4, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {v2, p1, v3, v1, v4}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/tinder/StateMachine;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/service/zao;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/service/zao;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/service/zao;->log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/zzw;

    return v6

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Lcom/google/android/gms/common/internal/TelemetryData;

    if-eqz v0, :cond_8

    iget-object v1, v0, Lcom/google/android/gms/common/internal/TelemetryData;->zab:Ljava/util/List;

    iget v0, v0, Lcom/google/android/gms/common/internal/TelemetryData;->zaa:I

    iget v2, p1, Lcom/google/android/gms/common/api/internal/zace;->zab:I

    if-ne v0, v2, :cond_4

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p1, Lcom/google/android/gms/common/api/internal/zace;->zad:I

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Lcom/google/android/gms/common/internal/TelemetryData;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/zace;->zaa:Lcom/google/android/gms/common/internal/MethodInvocation;

    iget-object v2, v0, Lcom/google/android/gms/common/internal/TelemetryData;->zab:Ljava/util/List;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/common/internal/TelemetryData;->zab:Ljava/util/List;

    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/common/internal/TelemetryData;->zab:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Lcom/google/android/gms/common/internal/TelemetryData;

    if-eqz v0, :cond_8

    iget v1, v0, Lcom/google/android/gms/common/internal/TelemetryData;->zaa:I

    if-gtz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaD()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/service/zao;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->zaa:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    new-instance v4, Lcom/google/android/gms/common/internal/service/zao;

    sget-object v7, Lcom/google/android/gms/common/internal/service/zao;->zae:Lcom/tinder/StateMachine;

    sget-object v8, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {v4, v1, v7, v2, v8}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/tinder/StateMachine;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    iput-object v4, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/service/zao;

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/service/zao;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/service/zao;->log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/zzw;

    :cond_7
    iput-object v5, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Lcom/google/android/gms/common/internal/TelemetryData;

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Lcom/google/android/gms/common/internal/TelemetryData;

    if-nez v0, :cond_21

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/zace;->zaa:Lcom/google/android/gms/common/internal/MethodInvocation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/common/internal/TelemetryData;

    iget v2, p1, Lcom/google/android/gms/common/api/internal/zace;->zab:I

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(Ljava/util/List;I)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Lcom/google/android/gms/common/internal/TelemetryData;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/common/api/internal/zace;->zac:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v6

    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Lcom/google/android/gms/common/internal/TelemetryData;

    if-eqz p1, :cond_21

    iget v0, p1, Lcom/google/android/gms/common/internal/TelemetryData;->zaa:I

    if-gtz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaD()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/service/zao;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->zaa:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    new-instance v2, Lcom/google/android/gms/common/internal/service/zao;

    sget-object v3, Lcom/google/android/gms/common/internal/service/zao;->zae:Lcom/tinder/StateMachine;

    sget-object v4, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/tinder/StateMachine;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/service/zao;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/service/zao;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/service/zao;->log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/zzw;

    :cond_b
    iput-object v5, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Lcom/google/android/gms/common/internal/TelemetryData;

    return v6

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabs;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/zabs;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zabs;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zabq;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zak:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabq;->zab:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    const/16 v3, 0xf

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zabs;->zab:Lcom/google/android/gms/common/Feature;

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zac;

    if-eqz v3, :cond_c

    invoke-virtual {v3, p0}, Lcom/google/android/gms/common/api/internal/zac;->zab(Lcom/google/android/gms/common/api/internal/zabq;)[Lcom/google/android/gms/common/Feature;

    move-result-object v5

    if-eqz v5, :cond_c

    array-length v7, v5

    move v8, v4

    :goto_3
    if-ge v8, v7, :cond_c

    aget-object v9, v5, v8

    invoke-static {v9, p1}, Lcom/google/android/gms/common/internal/zzah;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    if-ltz v8, :cond_c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_4
    if-ge v4, p0, :cond_21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zac;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    new-instance v3, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {v3, p1}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zac;->zae(Ljava/lang/Exception;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabs;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/zabs;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zabs;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zabq;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zak:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_e

    :cond_f
    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaj:Z

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabq;->zao()V

    return v6

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabq;->zaG()V

    return v6

    :pswitch_5
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zabq;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzah;->checkHandlerThread(Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zag:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zae:Landroidx/room/concurrent/FileLock;

    iget-object v1, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_5

    :cond_11
    const-string p0, "Timing out service connection."

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    return v6

    :cond_12
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabq;->zaJ()V

    :cond_13
    return v6

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zabq;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzah;->checkHandlerThread(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaj:Z

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    if-eqz v0, :cond_14

    const/16 v0, 0xb

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v0, 0x9

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaj:Z

    :cond_14
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_15

    const-string p1, "Connection timed out waiting for Google Play services update to complete."

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p1, v5, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_6

    :cond_15
    const-string p1, "API failed to connect while resuming due to an unknown error."

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p1, v5, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zabq;->zaE(Lcom/google/android/gms/common/api/Status;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/api/Api$Client;

    const-string p1, "Timing out connection while resuming."

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    return v6

    :pswitch_8
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroidx/collection/ArraySet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/collection/ArrayMap$KeyIterator;

    invoke-direct {v0, p1}, Landroidx/collection/ArrayMap$KeyIterator;-><init>(Landroidx/collection/ArraySet;)V

    :cond_16
    :goto_7
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {v0}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/ApiKey;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabq;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabq;->zav()V

    goto :goto_7

    :cond_17
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroidx/collection/ArraySet;

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->clear()V

    return v6

    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zabq;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzah;->checkHandlerThread(Landroid/os/Handler;)V

    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaj:Z

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabq;->zao()V

    return v6

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaG(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/api/internal/zabq;

    return v6

    :pswitch_b
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    sget-object v0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zza:Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    monitor-enter v0

    :try_start_0
    iget-boolean v3, v0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zze:Z

    if-nez v3, :cond_18

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iput-boolean v6, v0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zze:Z

    goto :goto_8

    :catchall_0
    move-exception p0

    goto :goto_9

    :cond_18
    :goto_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/google/android/gms/common/api/internal/zabl;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/zabl;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)V

    monitor-enter v0

    :try_start_1
    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzd:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_19

    new-instance v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v3}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_19

    iget v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-le v0, v3, :cond_19

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_19
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_21

    iput-wide v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:J

    return v6

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zabq;

    iget v4, v2, Lcom/google/android/gms/common/api/internal/zabq;->zah:I

    if-ne v4, v0, :cond_1a

    goto :goto_a

    :cond_1b
    move-object v2, v5

    :goto_a
    if-eqz v2, :cond_1d

    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1c

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj:Lcom/google/android/gms/common/GoogleApiAvailability;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->$r8$clinit:I

    invoke-static {v0}, Lcom/google/android/gms/common/ConnectionResult;->zza(I)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/google/android/gms/common/ConnectionResult;->zzd:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Error resolution was canceled by the user, original error message: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v3, p0, v5, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/api/internal/zabq;->zaE(Lcom/google/android/gms/common/api/Status;)V

    return v6

    :cond_1c
    iget-object p0, v2, Lcom/google/android/gms/common/api/internal/zabq;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaF(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/api/internal/zabq;->zaE(Lcom/google/android/gms/common/api/Status;)V

    return v6

    :cond_1d
    const-string p0, "Could not find API instance "

    const-string p1, " while trying to fail enqueued calls."

    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "GoogleApiManager"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zach;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/zach;->zac:Lcom/google/android/gms/common/api/GoogleApi;

    iget-object v1, v1, Lcom/google/android/gms/common/api/GoogleApi;->zaf:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabq;

    if-nez v0, :cond_1e

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zach;->zac:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaG(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/api/internal/zabq;

    move-result-object v0

    :cond_1e
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    iget v1, p1, Lcom/google/android/gms/common/api/internal/zach;->zab:I

    if-eq p0, v1, :cond_1f

    iget-object p0, p1, Lcom/google/android/gms/common/api/internal/zach;->zaa:Lcom/google/android/gms/common/api/internal/zac;

    sget-object p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zac;->zad(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabq;->zav()V

    return v6

    :cond_1f
    iget-object p0, p1, Lcom/google/android/gms/common/api/internal/zach;->zaa:Lcom/google/android/gms/common/api/internal/zac;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zabq;->zap(Lcom/google/android/gms/common/api/internal/zac;)V

    return v6

    :pswitch_e
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabq;

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzah;->checkHandlerThread(Landroid/os/Handler;)V

    iput-object v5, p1, Lcom/google/android/gms/common/api/internal/zabq;->zal:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabq;->zao()V

    goto :goto_b

    :pswitch_f
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v6, p1, :cond_20

    goto :goto_c

    :cond_20
    const-wide/16 v1, 0x2710

    :goto_c
    iput-wide v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:J

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/ApiKey;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    :cond_21
    :goto_e
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zaD()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/zah;->getInstance()Lcom/google/android/gms/common/internal/zah;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zah;->zaa:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzb:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Landroidx/room/concurrent/FileLock;

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    const v0, 0xc1fa340

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v1, :cond_3

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final zaE(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lcom/google/android/gms/common/wrappers/InstantApps;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/common/wrappers/InstantApps;->zza:Landroid/content/Context;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    sget-object v5, Lcom/google/android/gms/common/wrappers/InstantApps;->zzb:Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_1
    :goto_0
    :try_start_1
    sput-object v4, Lcom/google/android/gms/common/wrappers/InstantApps;->zzb:Ljava/lang/Boolean;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/common/wrappers/InstantApps;->zzb:Ljava/lang/Boolean;

    sput-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zza:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    move v2, v3

    :goto_1
    const/4 v1, 0x0

    if-eqz v2, :cond_2

    goto :goto_5

    :cond_2
    iget v2, p1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v5, p1, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-eqz v5, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    goto :goto_4

    :cond_4
    invoke-virtual {v0, p0, v4, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    const/high16 v4, 0xc000000

    invoke-static {p0, v1, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    :goto_3
    move-object v2, v4

    :goto_4
    if-eqz v2, :cond_6

    iget p1, p1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    sget v4, Lcom/google/android/gms/common/api/GoogleApiActivity;->$r8$clinit:I

    const-class v4, Lcom/google/android/gms/common/api/GoogleApiActivity;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "pending_intent"

    invoke-virtual {v5, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "failing_client_id"

    invoke-virtual {v5, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "notify_manager"

    invoke-virtual {v5, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p2, 0xa000000

    invoke-static {p0, v1, v5, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zae(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return v3

    :cond_6
    :goto_5
    return v1

    :goto_6
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final zaG(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/api/internal/zabq;
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/common/api/GoogleApi;->zaf:Lcom/google/android/gms/common/api/internal/ApiKey;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zabq;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabq;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/common/api/internal/zabq;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/GoogleApi;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, v2, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroidx/collection/ArraySet;

    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabq;->zao()V

    return-object v2
.end method

.method public final zax(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaE(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
