.class public final Lcom/motorola/camera/analytics/ShotToShotEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "SourceFile"


# static fields
.field public static final FACING:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final MCFQUEUE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final SHOTTIME:Lcom/google/android/gms/common/internal/zzv;


# instance fields
.field public final mSessionMap:Landroid/util/LongSparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "SHOTTIME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/ShotToShotEvent;->SHOTTIME:Lcom/google/android/gms/common/internal/zzv;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "MCFQUEUE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/ShotToShotEvent;->MCFQUEUE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "FACING"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/ShotToShotEvent;->FACING:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/camera/analytics/LogEvent;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public final addData(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 5

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid session:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " using default data"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/analytics/LogEvent;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;-><init>()V

    :cond_0
    const-string p0, "SHOTSEQID"

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "MODE"

    iget-object p1, v0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mModeName:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide p0, v0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mEndTime:J

    iget-wide v1, v0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mStartTime:J

    sub-long/2addr p0, v1

    iget-wide v1, v0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mKpiTime:J

    const-wide/16 v3, -0x1

    cmp-long p3, v1, v3

    if-eqz p3, :cond_1

    move-wide p0, v1

    goto :goto_0

    :cond_1
    long-to-float p3, p0

    const/4 v1, 0x0

    cmpl-float p3, p3, v1

    if-ltz p3, :cond_2

    const-wide/32 v1, 0xea60

    cmp-long p3, p0, v1

    if-gtz p3, :cond_2

    goto :goto_0

    :cond_2
    move-wide p0, v3

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/analytics/ShotToShotEvent;->SHOTTIME:Lcom/google/android/gms/common/internal/zzv;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/common/internal/zzv;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    iget p0, v0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mMcfQueue:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/analytics/ShotToShotEvent;->MCFQUEUE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/motorola/camera/analytics/LogEvent;->getCurrentCameraIdForAnalytics()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/analytics/ShotToShotEvent;->FACING:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    return-void
.end method

.method public final getEventType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.9"

    return-object p0
.end method

.method public final getSessionSeqId(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/Object;)J
    .locals 0

    check-cast p2, Ljava/lang/Long;

    iget-object p0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    iget-wide p0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mSessionSeqId:J

    return-wide p0
.end method
