.class public final Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final id:I

.field public final name:Ljava/lang/String;

.field public priority:Lcom/motorola/camera/background/common/Priority;

.field public final procIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

.field public final type:Lcom/motorola/camera/background/common/ClientType;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/ClientType;ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    const-string/jumbo v1, "procIntf"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "type"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->procIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->type:Lcom/motorola/camera/background/common/ClientType;

    iput p3, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->id:I

    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->procIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->procIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->type:Lcom/motorola/camera/background/common/ClientType;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->type:Lcom/motorola/camera/background/common/ClientType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->id:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->id:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->procIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->type:Lcom/motorola/camera/background/common/ClientType;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->id:I

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client(procIntf="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->procIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->type:Lcom/motorola/camera/background/common/ClientType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", priority="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
