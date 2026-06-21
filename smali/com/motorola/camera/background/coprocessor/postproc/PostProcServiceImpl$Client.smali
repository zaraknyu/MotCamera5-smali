.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final client:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

.field public final id:I

.field public final jobs:Ljava/util/ArrayList;

.field public final name:Ljava/lang/String;

.field public priority:Lcom/motorola/camera/background/common/Priority;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    const-string v1, "name"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->client:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    iput p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->id:I

    iput-object p3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->jobs:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->client:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    iget-object v1, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->client:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->id:I

    iget v1, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->id:I

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->jobs:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->jobs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;

    iget-object p1, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;

    if-eq p0, p1, :cond_6

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->client:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->id:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->jobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client(client="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->client:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", jobs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->jobs:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", priority="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
