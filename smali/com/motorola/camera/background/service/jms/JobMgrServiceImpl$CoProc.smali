.class public final Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;

.field public final id:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public final procIntf:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->id:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->procIntf:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    check-cast p3, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->id:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget-object v2, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->id:Lcom/motorola/camera/background/common/RegisteredProcDef;

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->procIntf:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    iget-object v2, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->procIntf:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    sget-object p0, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->id:Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->procIntf:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    sget-object v0, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CoProc(id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->id:Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", procIntf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->procIntf:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", connection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;

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
