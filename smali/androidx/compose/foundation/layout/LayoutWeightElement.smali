.class public final Landroidx/compose/foundation/layout/LayoutWeightElement;
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/LayoutWeightElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/layout/LayoutWeightNode;",
        "foundation-layout_release"
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
.field public final weight:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->weight:F

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/LayoutWeightNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iget p0, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->weight:F

    iput p0, v0, Landroidx/compose/foundation/layout/LayoutWeightNode;->weight:F

    const/4 p0, 0x1

    iput-boolean p0, v0, Landroidx/compose/foundation/layout/LayoutWeightNode;->fill:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/LayoutWeightElement;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/compose/foundation/layout/LayoutWeightElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget p0, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->weight:F

    iget p1, p1, Landroidx/compose/foundation/layout/LayoutWeightElement;->weight:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_3

    return v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget p0, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->weight:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/layout/LayoutWeightNode;

    iget p0, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->weight:F

    iput p0, p1, Landroidx/compose/foundation/layout/LayoutWeightNode;->weight:F

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroidx/compose/foundation/layout/LayoutWeightNode;->fill:Z

    return-void
.end method
