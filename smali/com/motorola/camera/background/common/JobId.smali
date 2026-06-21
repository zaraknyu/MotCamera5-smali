.class public final Lcom/motorola/camera/background/common/JobId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 62\u00020\u0001:\u00016BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fB\u0011\u0008\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u000e\u0010\u0012J\u0018\u0010!\u001a\u00020\"2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u0003H\u0016J\u0008\u0010$\u001a\u00020\u0003H\u0016J\u0006\u0010%\u001a\u00020&J\u0006\u0010\'\u001a\u00020\u0005J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0005H\u00c6\u0003J\t\u0010*\u001a\u00020\u0005H\u00c6\u0003J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0003H\u00c6\u0003J\t\u0010.\u001a\u00020\u000bH\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\rH\u00c6\u0003J[\u00100\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00c6\u0001J\u0013\u00101\u001a\u00020\u000b2\u0008\u00102\u001a\u0004\u0018\u000103H\u00d6\u0003J\t\u00104\u001a\u00020\u0003H\u00d6\u0001J\t\u00105\u001a\u00020\rH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0014R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u00a8\u00067"
    }
    d2 = {
        "Lcom/motorola/camera/background/common/JobId;",
        "Landroid/os/Parcelable;",
        "clientId",
        "",
        "jobNum",
        "",
        "taskNum",
        "sourceId",
        "targetId",
        "priority",
        "useFifo",
        "",
        "comment",
        "",
        "<init>",
        "(IJJIIIZLjava/lang/String;)V",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "getClientId",
        "()I",
        "setClientId",
        "(I)V",
        "getJobNum",
        "()J",
        "getTaskNum",
        "getSourceId",
        "getTargetId",
        "getPriority",
        "getUseFifo",
        "()Z",
        "getComment",
        "()Ljava/lang/String;",
        "writeToParcel",
        "",
        "flags",
        "describeContents",
        "toTaskId",
        "Lcom/motorola/camera/background/common/TaskId;",
        "getKey",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "CREATOR",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Lcom/motorola/camera/background/common/JobId$CREATOR;


# instance fields
.field private clientId:I

.field private final comment:Ljava/lang/String;

.field private final jobNum:J

.field private final priority:I

.field private final sourceId:I

.field private final targetId:I

.field private final taskNum:J

.field private final useFifo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/common/JobId$CREATOR;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/JobId;->CREATOR:Lcom/motorola/camera/background/common/JobId$CREATOR;

    return-void
.end method

.method public constructor <init>(IJJIIIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    .line 2
    iput-wide p2, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    iput-wide p4, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    .line 3
    iput p6, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    iput p7, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    .line 4
    iput p8, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    iput-boolean p9, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    iput-object p10, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 12

    const-string/jumbo v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v10, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 12
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object v1, p0

    .line 13
    invoke-direct/range {v1 .. v11}, Lcom/motorola/camera/background/common/JobId;-><init>(IJJIIIZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/motorola/camera/background/common/JobId;IJJIIIZLjava/lang/String;ILjava/lang/Object;)Lcom/motorola/camera/background/common/JobId;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    iget p1, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    iget-wide p2, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    iget-wide p4, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    iget p6, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    iget p7, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    iget p8, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    iget-boolean p9, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    :cond_6
    and-int/lit16 p11, p11, 0x80

    if-eqz p11, :cond_7

    iget-object p10, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    :cond_7
    move p11, p9

    move-object p12, p10

    move p9, p7

    move p10, p8

    move p8, p6

    move-wide p6, p4

    move-wide p4, p2

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p12}, Lcom/motorola/camera/background/common/JobId;->copy(IJJIIIZLjava/lang/String;)Lcom/motorola/camera/background/common/JobId;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    return p0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    return-wide v0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    return p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    return p0
.end method

.method public final component7()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    return p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(IJJIIIZLjava/lang/String;)Lcom/motorola/camera/background/common/JobId;
    .locals 0

    new-instance p0, Lcom/motorola/camera/background/common/JobId;

    invoke-direct/range {p0 .. p10}, Lcom/motorola/camera/background/common/JobId;-><init>(IJJIIIZLjava/lang/String;)V

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/common/JobId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/common/JobId;

    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    iget v3, p1, Lcom/motorola/camera/background/common/JobId;->clientId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    iget-wide v5, p1, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    iget-wide v5, p1, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    iget v3, p1, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    iget v3, p1, Lcom/motorola/camera/background/common/JobId;->targetId:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    iget v3, p1, Lcom/motorola/camera/background/common/JobId;->priority:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    iget-boolean v3, p1, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getClientId()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    return p0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    return-object p0
.end method

.method public final getJobNum()J
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    return-wide v0
.end method

.method public final getKey()J
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    return-wide v0
.end method

.method public final getPriority()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    return p0
.end method

.method public final getSourceId()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    return p0
.end method

.method public final getTargetId()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    return p0
.end method

.method public final getTaskNum()J
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    return-wide v0
.end method

.method public final getUseFifo()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final setClientId(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    iget-wide v1, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    iget-wide v3, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    iget v5, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    iget v6, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    iget v7, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    iget-boolean v8, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    iget-object p0, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "JobId(clientId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", jobNum="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", taskNum="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", sourceId="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", targetId="

    const-string v1, ", priority="

    invoke-static {v9, v5, v0, v6, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", useFifo="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", comment="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v9, p0, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toTaskId()Lcom/motorola/camera/background/common/TaskId;
    .locals 11

    new-instance v0, Lcom/motorola/camera/background/common/TaskId;

    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    iget-wide v2, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    iget-wide v4, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    iget v6, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    iget v7, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    iget v8, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    iget-boolean v9, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    iget-object v10, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/background/common/TaskId;-><init>(IJJIIIZLjava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string/jumbo p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
