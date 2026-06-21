.class final Landroidx/compose/foundation/layout/WrapContentElement;
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
        "Landroidx/compose/foundation/layout/WrapContentElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/layout/WrapContentNode;",
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
.field public final align:Ljava/lang/Object;

.field public final alignmentCallback:Lkotlin/jvm/internal/Lambda;

.field public final direction:Landroidx/compose/foundation/layout/Direction;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/Direction;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/WrapContentElement;->direction:Landroidx/compose/foundation/layout/Direction;

    check-cast p2, Lkotlin/jvm/internal/Lambda;

    iput-object p2, p0, Landroidx/compose/foundation/layout/WrapContentElement;->alignmentCallback:Lkotlin/jvm/internal/Lambda;

    iput-object p3, p0, Landroidx/compose/foundation/layout/WrapContentElement;->align:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/WrapContentNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iget-object v1, p0, Landroidx/compose/foundation/layout/WrapContentElement;->direction:Landroidx/compose/foundation/layout/Direction;

    iput-object v1, v0, Landroidx/compose/foundation/layout/WrapContentNode;->direction:Landroidx/compose/foundation/layout/Direction;

    iget-object p0, p0, Landroidx/compose/foundation/layout/WrapContentElement;->alignmentCallback:Lkotlin/jvm/internal/Lambda;

    iput-object p0, v0, Landroidx/compose/foundation/layout/WrapContentNode;->alignmentCallback:Lkotlin/jvm/internal/Lambda;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-class v0, Landroidx/compose/foundation/layout/WrapContentElement;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Landroidx/compose/foundation/layout/WrapContentElement;

    iget-object v0, p0, Landroidx/compose/foundation/layout/WrapContentElement;->direction:Landroidx/compose/foundation/layout/Direction;

    iget-object v1, p1, Landroidx/compose/foundation/layout/WrapContentElement;->direction:Landroidx/compose/foundation/layout/Direction;

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/compose/foundation/layout/WrapContentElement;->align:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/compose/foundation/layout/WrapContentElement;->align:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/layout/WrapContentElement;->direction:Landroidx/compose/foundation/layout/Direction;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/layout/WrapContentElement;->align:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    check-cast p1, Landroidx/compose/foundation/layout/WrapContentNode;

    iget-object v0, p0, Landroidx/compose/foundation/layout/WrapContentElement;->direction:Landroidx/compose/foundation/layout/Direction;

    iput-object v0, p1, Landroidx/compose/foundation/layout/WrapContentNode;->direction:Landroidx/compose/foundation/layout/Direction;

    iget-object p0, p0, Landroidx/compose/foundation/layout/WrapContentElement;->alignmentCallback:Lkotlin/jvm/internal/Lambda;

    iput-object p0, p1, Landroidx/compose/foundation/layout/WrapContentNode;->alignmentCallback:Lkotlin/jvm/internal/Lambda;

    return-void
.end method
