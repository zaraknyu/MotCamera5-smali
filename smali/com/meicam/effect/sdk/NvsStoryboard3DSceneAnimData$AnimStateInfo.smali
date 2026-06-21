.class public Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimStateInfo"
.end annotation


# instance fields
.field private animName:Ljava/lang/String;

.field private animOffsetTime:J

.field private animStartTime:J

.field private lastAnimName:Ljava/lang/String;

.field private lastAnimOffsetTime:J

.field private lastAnimStartTime:J

.field private lastAnimStopTime:J

.field private layerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animStartTime:J

    iput-wide v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animOffsetTime:J

    iput-wide v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStartTime:J

    iput-wide v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStopTime:J

    iput-wide v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimOffsetTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animOffsetTime:J

    iput-wide v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStartTime:J

    iput-wide v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStopTime:J

    iput-wide v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimOffsetTime:J

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->layerId:Ljava/lang/String;

    iput-object p2, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animName:Ljava/lang/String;

    int-to-long p1, p3

    iput-wide p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animStartTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animOffsetTime:J

    iput-wide v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimOffsetTime:J

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->layerId:Ljava/lang/String;

    iput-object p2, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animStartTime:J

    iput-wide p5, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStartTime:J

    iput-wide p7, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStopTime:J

    iput-object p9, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnimName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animName:Ljava/lang/String;

    return-object p0
.end method

.method public getAnimOffsetTime()J
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animOffsetTime:J

    return-wide v0
.end method

.method public getAnimStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animStartTime:J

    return-wide v0
.end method

.method public getLastAnimName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimName:Ljava/lang/String;

    return-object p0
.end method

.method public getLastAnimOffsetTime()J
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimOffsetTime:J

    return-wide v0
.end method

.method public getLastAnimStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStartTime:J

    return-wide v0
.end method

.method public getLastAnimStopTime()J
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStopTime:J

    return-wide v0
.end method

.method public getLayerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->layerId:Ljava/lang/String;

    return-object p0
.end method

.method public setAnimName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animName:Ljava/lang/String;

    return-void
.end method

.method public setAnimOffsetTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animOffsetTime:J

    return-void
.end method

.method public setAnimStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animStartTime:J

    return-void
.end method

.method public setLastAnimName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimName:Ljava/lang/String;

    return-void
.end method

.method public setLastAnimOffsetTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimOffsetTime:J

    return-void
.end method

.method public setLastAnimStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStartTime:J

    return-void
.end method

.method public setLastAnimStopTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStopTime:J

    return-void
.end method

.method public setLayerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->layerId:Ljava/lang/String;

    return-void
.end method
