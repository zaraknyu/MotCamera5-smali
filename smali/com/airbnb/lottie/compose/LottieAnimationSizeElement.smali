.class public final Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;",
        "lottie-compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->width:I

    iput p2, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->height:I

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iget v1, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->width:I

    iput v1, v0, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;->width:I

    iget p0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->height:I

    iput p0, v0, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;->height:I

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;

    iget v1, p1, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->width:I

    iget v3, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->width:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->height:I

    iget p1, p1, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->height:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, ", height="

    const-string v1, ")"

    iget v2, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->width:I

    iget p0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->height:I

    const-string v3, "LottieAnimationSizeElement(width="

    invoke-static {v2, p0, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    check-cast p1, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->width:I

    iput v0, p1, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;->width:I

    iget p0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->height:I

    iput p0, p1, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;->height:I

    return-void
.end method
