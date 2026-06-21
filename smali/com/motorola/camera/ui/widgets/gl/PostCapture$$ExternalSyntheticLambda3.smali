.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(JILjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;->f$0:J

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;->f$1:I

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mTimeStamp:J

    :goto_0
    iget-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;->f$0:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mExtraJson:Ljava/lang/String;

    const-class v5, Lcom/motorola/camera/utility/PostViewJsonData;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/utility/PostViewJsonData;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/motorola/camera/utility/PostViewJsonData;->getPostViewId()I

    move-result v3

    :goto_2
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;->f$1:I

    if-ne v4, v3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
