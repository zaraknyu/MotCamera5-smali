.class public final Lcom/motorola/camera/background/common/JobMetrics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final Companion:Lcom/motorola/camera/background/common/JobMetrics$Companion;


# instance fields
.field public final timeAddedMs:J

.field public final timeCompletedMs:J

.field public final timeStartedMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/common/JobMetrics$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/JobMetrics;->Companion:Lcom/motorola/camera/background/common/JobMetrics$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IJJJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iput-wide v1, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeAddedMs:J

    goto :goto_0

    :cond_0
    iput-wide p2, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeAddedMs:J

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-wide v1, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeStartedMs:J

    goto :goto_1

    :cond_1
    iput-wide p4, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeStartedMs:J

    :goto_1
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    iput-wide v1, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeCompletedMs:J

    return-void

    :cond_2
    iput-wide p6, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeCompletedMs:J

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeAddedMs:J

    .line 3
    iput-wide p3, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeStartedMs:J

    .line 4
    iput-wide p5, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeCompletedMs:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/common/JobMetrics;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/common/JobMetrics;

    iget-wide v3, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeAddedMs:J

    iget-wide v5, p1, Lcom/motorola/camera/background/common/JobMetrics;->timeAddedMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeStartedMs:J

    iget-wide v5, p1, Lcom/motorola/camera/background/common/JobMetrics;->timeStartedMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeCompletedMs:J

    iget-wide p0, p1, Lcom/motorola/camera/background/common/JobMetrics;->timeCompletedMs:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeAddedMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeStartedMs:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeCompletedMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JobMetrics(timeAddedMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeAddedMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeStartedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeStartedMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeCompletedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/common/JobMetrics;->timeCompletedMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
