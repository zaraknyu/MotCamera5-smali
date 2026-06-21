.class public final Landroidx/media3/exoplayer/analytics/PlayerId;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final equalityToken:Ljava/lang/Object;

.field public final logSessionIdApi31:Lcom/google/android/gms/tasks/zza;

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/analytics/PlayerId;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/analytics/PlayerId;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->name:Ljava/lang/String;

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_0

    new-instance p1, Lcom/google/android/gms/tasks/zza;

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/tasks/zza;-><init>(IZ)V

    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v0, p1, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Lcom/google/android/gms/tasks/zza;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->equalityToken:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/analytics/PlayerId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->name:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/analytics/PlayerId;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Lcom/google/android/gms/tasks/zza;

    iget-object v3, p1, Landroidx/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Lcom/google/android/gms/tasks/zza;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->equalityToken:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/PlayerId;->equalityToken:Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final declared-synchronized getLogSessionId()Landroid/media/metrics/LogSessionId;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Lcom/google/android/gms/tasks/zza;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Landroid/media/metrics/LogSessionId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Lcom/google/android/gms/tasks/zza;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->equalityToken:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->name:Ljava/lang/String;

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
