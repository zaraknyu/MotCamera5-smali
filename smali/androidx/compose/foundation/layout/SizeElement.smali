.class final Landroidx/compose/foundation/layout/SizeElement;
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/SizeElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/layout/SizeNode;",
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
.field public final enforceIncoming:Z

.field public final maxHeight:F

.field public final maxWidth:F

.field public final minHeight:F

.field public final minWidth:F


# direct methods
.method public constructor <init>(FFFFZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/compose/foundation/layout/SizeElement;->minWidth:F

    .line 3
    iput p2, p0, Landroidx/compose/foundation/layout/SizeElement;->minHeight:F

    .line 4
    iput p3, p0, Landroidx/compose/foundation/layout/SizeElement;->maxWidth:F

    .line 5
    iput p4, p0, Landroidx/compose/foundation/layout/SizeElement;->maxHeight:F

    .line 6
    iput-boolean p5, p0, Landroidx/compose/foundation/layout/SizeElement;->enforceIncoming:Z

    return-void
.end method

.method public synthetic constructor <init>(FFFFZI)V
    .locals 2

    and-int/lit8 v0, p6, 0x1

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_2

    move p3, v1

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    move p4, v1

    .line 7
    :cond_3
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZ)V

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/SizeNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iget v1, p0, Landroidx/compose/foundation/layout/SizeElement;->minWidth:F

    iput v1, v0, Landroidx/compose/foundation/layout/SizeNode;->minWidth:F

    iget v1, p0, Landroidx/compose/foundation/layout/SizeElement;->minHeight:F

    iput v1, v0, Landroidx/compose/foundation/layout/SizeNode;->minHeight:F

    iget v1, p0, Landroidx/compose/foundation/layout/SizeElement;->maxWidth:F

    iput v1, v0, Landroidx/compose/foundation/layout/SizeNode;->maxWidth:F

    iget v1, p0, Landroidx/compose/foundation/layout/SizeElement;->maxHeight:F

    iput v1, v0, Landroidx/compose/foundation/layout/SizeNode;->maxHeight:F

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/SizeElement;->enforceIncoming:Z

    iput-boolean p0, v0, Landroidx/compose/foundation/layout/SizeNode;->enforceIncoming:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/SizeElement;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/SizeElement;

    iget v0, p1, Landroidx/compose/foundation/layout/SizeElement;->minWidth:F

    iget v1, p0, Landroidx/compose/foundation/layout/SizeElement;->minWidth:F

    invoke-static {v1, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidx/compose/foundation/layout/SizeElement;->minHeight:F

    iget v1, p1, Landroidx/compose/foundation/layout/SizeElement;->minHeight:F

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Landroidx/compose/foundation/layout/SizeElement;->maxWidth:F

    iget v1, p1, Landroidx/compose/foundation/layout/SizeElement;->maxWidth:F

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget v0, p0, Landroidx/compose/foundation/layout/SizeElement;->maxHeight:F

    iget v1, p1, Landroidx/compose/foundation/layout/SizeElement;->maxHeight:F

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/SizeElement;->enforceIncoming:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/SizeElement;->enforceIncoming:Z

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

    iget v0, p0, Landroidx/compose/foundation/layout/SizeElement;->minWidth:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/foundation/layout/SizeElement;->minHeight:F

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/layout/SizeElement;->maxWidth:F

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/layout/SizeElement;->maxHeight:F

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/SizeElement;->enforceIncoming:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    check-cast p1, Landroidx/compose/foundation/layout/SizeNode;

    iget v0, p0, Landroidx/compose/foundation/layout/SizeElement;->minWidth:F

    iput v0, p1, Landroidx/compose/foundation/layout/SizeNode;->minWidth:F

    iget v0, p0, Landroidx/compose/foundation/layout/SizeElement;->minHeight:F

    iput v0, p1, Landroidx/compose/foundation/layout/SizeNode;->minHeight:F

    iget v0, p0, Landroidx/compose/foundation/layout/SizeElement;->maxWidth:F

    iput v0, p1, Landroidx/compose/foundation/layout/SizeNode;->maxWidth:F

    iget v0, p0, Landroidx/compose/foundation/layout/SizeElement;->maxHeight:F

    iput v0, p1, Landroidx/compose/foundation/layout/SizeNode;->maxHeight:F

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/SizeElement;->enforceIncoming:Z

    iput-boolean p0, p1, Landroidx/compose/foundation/layout/SizeNode;->enforceIncoming:Z

    return-void
.end method
