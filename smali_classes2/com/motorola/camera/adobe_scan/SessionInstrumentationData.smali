.class final Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000e\n\u0000\u0008\u0083\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00c6\u0003J\u000f\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0003J7\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00062\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;",
        "",
        "retakeCount",
        "",
        "downloadDialogAction",
        "hasFullyScrolled",
        "",
        "dataList",
        "",
        "Lcom/motorola/camera/adobe_scan/PageInstrumentationData;",
        "<init>",
        "(IIZLjava/util/List;)V",
        "getRetakeCount",
        "()I",
        "getDownloadDialogAction",
        "getHasFullyScrolled",
        "()Z",
        "getDataList",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "feature_adobe_scan_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/adobe_scan/PageInstrumentationData;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadDialogAction:I

.field private final hasFullyScrolled:Z

.field private final retakeCount:I


# direct methods
.method public constructor <init>(IIZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List<",
            "Lcom/motorola/camera/adobe_scan/PageInstrumentationData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->retakeCount:I

    iput p2, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->downloadDialogAction:I

    iput-boolean p3, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->hasFullyScrolled:Z

    iput-object p4, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->dataList:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;IIZLjava/util/List;ILjava/lang/Object;)Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->retakeCount:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->downloadDialogAction:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->hasFullyScrolled:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->dataList:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->copy(IIZLjava/util/List;)Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->retakeCount:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->downloadDialogAction:I

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->hasFullyScrolled:Z

    return p0
.end method

.method public final component4()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/adobe_scan/PageInstrumentationData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->dataList:Ljava/util/List;

    return-object p0
.end method

.method public final copy(IIZLjava/util/List;)Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List<",
            "Lcom/motorola/camera/adobe_scan/PageInstrumentationData;",
            ">;)",
            "Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;"
        }
    .end annotation

    const-string p0, "dataList"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;-><init>(IIZLjava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;

    iget v1, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->retakeCount:I

    iget v3, p1, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->retakeCount:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->downloadDialogAction:I

    iget v3, p1, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->downloadDialogAction:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->hasFullyScrolled:Z

    iget-boolean v3, p1, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->hasFullyScrolled:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->dataList:Ljava/util/List;

    iget-object p1, p1, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->dataList:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDataList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/adobe_scan/PageInstrumentationData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->dataList:Ljava/util/List;

    return-object p0
.end method

.method public final getDownloadDialogAction()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->downloadDialogAction:I

    return p0
.end method

.method public final getHasFullyScrolled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->hasFullyScrolled:Z

    return p0
.end method

.method public final getRetakeCount()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->retakeCount:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->retakeCount:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->downloadDialogAction:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->hasFullyScrolled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->dataList:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->retakeCount:I

    iget v1, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->downloadDialogAction:I

    iget-boolean v2, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->hasFullyScrolled:Z

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->dataList:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SessionInstrumentationData(retakeCount="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", downloadDialogAction="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", hasFullyScrolled="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", dataList="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
