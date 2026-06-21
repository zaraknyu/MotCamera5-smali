.class public Lcom/motorola/camera/mcf/McfAuxMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mHdrDetected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/mcf/McfAuxMetadata;->mHdrDetected:Z

    return-void
.end method


# virtual methods
.method public getHdrDetected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/mcf/McfAuxMetadata;->mHdrDetected:Z

    return p0
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "hdrDetected"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/mcf/McfAuxMetadata;->mHdrDetected:Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "McfAuxMetadata{mHdrDetected="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/motorola/camera/mcf/McfAuxMetadata;->mHdrDetected:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
