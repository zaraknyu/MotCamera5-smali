.class public final Lh/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/scan/sdk/ScanAppConnection$Option;


# static fields
.field public static final c:Ljava/util/List;


# instance fields
.field public final a:I

.field public final b:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lh/g;

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lh/g;-><init>(ILcom/adobe/scan/sdk/ScanAppConnection$Operation;I)V

    sget-object v0, Lcom/adobe/scan/sdk/ScanAppConnection$Operation;->Camera:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "camera"

    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/adobe/scan/sdk/ScanAppConnection$Operation;->Review:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "review"

    invoke-direct {v2, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/adobe/scan/sdk/ScanAppConnection$Operation;->Crop:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    new-instance v3, Lkotlin/Pair;

    const-string v4, "crop"

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/adobe/scan/sdk/ScanAppConnection$Operation;->Filter:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    new-instance v4, Lkotlin/Pair;

    const-string v5, "filter"

    invoke-direct {v4, v0, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/adobe/scan/sdk/ScanAppConnection$Operation;->Adjust:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    new-instance v5, Lkotlin/Pair;

    const-string v6, "adjust"

    invoke-direct {v5, v0, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/adobe/scan/sdk/ScanAppConnection$Operation;->Cleanup:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    new-instance v6, Lkotlin/Pair;

    const-string v7, "cleanup"

    invoke-direct {v6, v0, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/adobe/scan/sdk/ScanAppConnection$Operation;->Markup:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    new-instance v7, Lkotlin/Pair;

    const-string v8, "markup"

    invoke-direct {v7, v0, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/adobe/scan/sdk/ScanAppConnection$Operation;->Resize:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    new-instance v8, Lkotlin/Pair;

    const-string v9, "resize"

    invoke-direct {v8, v0, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v1 .. v8}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lh/g;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILcom/adobe/scan/sdk/ScanAppConnection$Operation;I)V
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    sget-object p2, Lcom/adobe/scan/sdk/ScanAppConnection$Operation;->Camera:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh/g;->a:I

    iput-object p2, p0, Lh/g;->b:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    return-void
.end method


# virtual methods
.method public final addToIntent(Landroid/content/Intent;)V
    .locals 4

    iget v0, p0, Lh/g;->a:I

    const-string v1, "initialPageIndex"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "initialImageIndex"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lh/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlin/Pair;

    iget-object v2, v2, Lkotlin/Pair;->first:Ljava/lang/Object;

    iget-object v3, p0, Lh/g;->b:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lkotlin/Pair;

    if-eqz v1, :cond_2

    iget-object p0, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v0, "operation"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh/g;

    iget v1, p0, Lh/g;->a:I

    iget v3, p1, Lh/g;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lh/g;->b:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    iget-object p1, p1, Lh/g;->b:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lh/g;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    invoke-static {v1, v0}, La/l;->a(II)I

    move-result v0

    iget-object p0, p0, Lh/g;->b:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LaunchAction(pageIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lh/g;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imageIndex=0, operation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lh/g;->b:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
