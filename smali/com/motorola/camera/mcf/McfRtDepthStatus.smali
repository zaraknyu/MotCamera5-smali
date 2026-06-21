.class public final Lcom/motorola/camera/mcf/McfRtDepthStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public status:I


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{McfRtDepthStatus:{status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/motorola/camera/mcf/McfRtDepthStatus;->status:I

    const-string/jumbo v1, "}}"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
