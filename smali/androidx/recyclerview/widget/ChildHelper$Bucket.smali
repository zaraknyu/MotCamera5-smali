.class public final Landroidx/recyclerview/widget/ChildHelper$Bucket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorInput;
.implements Landroidx/media3/extractor/ExtractorOutput;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$LottieAnimateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public mData:J

.field public mNext:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->$r8$classId:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->$r8$classId:I

    iput-wide p1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    iput-object p3, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/ExtractorInput;J)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    .line 6
    iput-wide p2, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;J)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->$r8$classId:I

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->$r8$classId:I

    iput-object p1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPointerInputChange-dBAh8RU(Landroidx/compose/ui/input/pointer/PointerInputChange;F)J
    .locals 5

    iget-wide v0, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    iget-wide v2, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    iget-object p1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/gestures/Orientation;

    if-nez p1, :cond_0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mainAxis-k-4lQ0M(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_0
    cmpl-float v0, v0, p2

    if-ltz v0, :cond_4

    if-nez p1, :cond_1

    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result p1

    invoke-static {p1, v0, v1}, Landroidx/compose/ui/geometry/Offset;->div-tuRUvjQ(FJ)J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(FJ)J

    move-result-wide p1

    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mainAxis-k-4lQ0M(J)F

    move-result v0

    iget-wide v1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mainAxis-k-4lQ0M(J)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    iget-wide v1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    sget-object p0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    const/16 p2, 0x20

    const-wide v3, 0xffffffffL

    if-ne p1, p0, :cond_2

    and-long/2addr v1, v3

    :goto_1
    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    goto :goto_2

    :cond_2
    shr-long/2addr v1, p2

    goto :goto_1

    :goto_2
    if-ne p1, p0, :cond_3

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr p0, p2

    and-long/2addr v0, v3

    or-long/2addr p0, v0

    return-wide p0

    :cond_3
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr p0, p2

    and-long/2addr v0, v3

    or-long/2addr p0, v0

    return-wide p0

    :cond_4
    const-wide p0, 0x7fc000007fc00000L    # 2.247117487993712E307

    return-wide p0
.end method

.method public advancePeekPosition(I)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    return-void
.end method

.method public clear(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-eqz p0, :cond_0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->clear(I)V

    :cond_0
    return-void

    :cond_1
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    return-void
.end method

.method public countOnesBefore(I)I
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    if-lt p1, v1, :cond_0

    iget-wide p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result p0

    return p0

    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    shl-long p0, v2, p1

    sub-long/2addr p0, v2

    and-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result p0

    return p0

    :cond_1
    if-ge p1, v1, :cond_2

    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    shl-long p0, v2, p1

    sub-long/2addr p0, v2

    and-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result p0

    return p0

    :cond_2
    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result p1

    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public endTracks()V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public ensureNext()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-direct {v0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public get(I)Z
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result p0

    return p0

    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getLength()J
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public insert(IZ)V
    .locals 9

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->insert(IZ)V

    return-void

    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    const-wide/16 v5, 0x1

    shl-long v7, v5, p1

    sub-long/2addr v7, v5

    and-long v5, v0, v7

    not-long v7, v7

    and-long/2addr v0, v7

    shl-long/2addr v0, v4

    or-long/2addr v0, v5

    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->set(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->clear(I)V

    :goto_1
    if-nez v2, :cond_4

    iget-object p1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {p0, v3, v2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->insert(IZ)V

    return-void
.end method

.method public mainAxis-k-4lQ0M(J)F
    .locals 2

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/Orientation;

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p0, v0, :cond_0

    const/16 p0, 0x20

    shr-long p0, p1, p0

    :goto_0
    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_0
    const-wide v0, 0xffffffffL

    and-long p0, p1, v0

    goto :goto_0
.end method

.method public onAnimationEnd()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    iget-wide v1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->playFixedDurationLottieAnimate(J)V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    iget-object p1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p1, Lcom/tinder/StateMachine;

    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    iget-object p0, p1, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public peek(II[B)I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->peek(II[B)I

    move-result p0

    return p0
.end method

.method public peekFully(II[B)V
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    return-void
.end method

.method public peekFully(IZ[BI)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ExtractorInput;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/ExtractorInput;->peekFully(IZ[BI)Z

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p0

    return p0
.end method

.method public readFully([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void
.end method

.method public readFully(IZ[BI)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ExtractorInput;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/ExtractorInput;->readFully(IZ[BI)Z

    move-result p0

    return p0
.end method

.method public remove(I)Z
    .locals 10

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    move-result p0

    return p0

    :cond_0
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    iget-wide v4, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    and-long v6, v4, v2

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    move p1, v6

    goto :goto_0

    :cond_1
    move p1, v7

    :goto_0
    not-long v8, v2

    and-long/2addr v4, v8

    iput-wide v4, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    sub-long/2addr v2, v0

    and-long v0, v4, v2

    not-long v2, v2

    and-long/2addr v2, v4

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->set(I)V

    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    :cond_3
    return p1
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->reset()V

    :cond_0
    return-void
.end method

.method public resetPeekPosition()V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    return-void
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/ExtractorOutput;

    new-instance v1, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;

    invoke-direct {v1, p0, p1, p1}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;-><init>(Landroidx/recyclerview/widget/ChildHelper$Bucket;Landroidx/media3/extractor/SeekMap;Landroidx/media3/extractor/SeekMap;)V

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    return-void
.end method

.method public set(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->set(I)V

    return-void

    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    return-void
.end method

.method public skip(I)I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorInput;->skip(I)I

    move-result p0

    return p0
.end method

.method public skipFully(I)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p0

    return-object p0
.end method
