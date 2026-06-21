.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public duration:J

.field public gesture:I

.field public final gestureFilter:Ljava/util/ArrayList;

.field public prevGesture:I

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->startTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->gestureFilter:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->gesture:I

    const-string v1, "No gesture detected"

    const-string v2, "Palm"

    const-string v3, "Fist"

    const-string v4, "Grab"

    const-string v5, "Unknown Gesture"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v8, :cond_2

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_0

    move-object v0, v5

    goto :goto_0

    :cond_0
    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    iget-wide v9, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->duration:J

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->prevGesture:I

    if-eqz p0, :cond_7

    if-eq p0, v8, :cond_6

    if-eq p0, v7, :cond_5

    if-eq p0, v6, :cond_4

    move-object v1, v5

    goto :goto_1

    :cond_4
    move-object v1, v4

    goto :goto_1

    :cond_5
    move-object v1, v3

    goto :goto_1

    :cond_6
    move-object v1, v2

    :cond_7
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "gesture:"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", duration:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", previous gesture: "

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
