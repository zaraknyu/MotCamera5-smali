.class public abstract Landroidx/compose/foundation/layout/SizeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillElement;

.field public static final FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

.field public static final FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

.field public static final WrapContentHeightCenter:Landroidx/compose/foundation/layout/WrapContentElement;

.field public static final WrapContentHeightTop:Landroidx/compose/foundation/layout/WrapContentElement;

.field public static final WrapContentSizeCenter:Landroidx/compose/foundation/layout/WrapContentElement;

.field public static final WrapContentSizeTopStart:Landroidx/compose/foundation/layout/WrapContentElement;

.field public static final WrapContentWidthCenter:Landroidx/compose/foundation/layout/WrapContentElement;

.field public static final WrapContentWidthStart:Landroidx/compose/foundation/layout/WrapContentElement;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;F)V

    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    sget-object v3, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    invoke-direct {v0, v3, v2}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;F)V

    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillElement;

    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    sget-object v4, Landroidx/compose/foundation/layout/Direction;->Both:Landroidx/compose/foundation/layout/Direction;

    invoke-direct {v0, v4, v2}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;F)V

    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    new-instance v2, Landroidx/compose/foundation/layout/WrapContentElement;

    new-instance v5, Landroidx/compose/foundation/layout/Arrangement$spacedBy$2;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Landroidx/compose/foundation/layout/Arrangement$spacedBy$2;-><init>(Landroidx/compose/ui/BiasAlignment$Horizontal;I)V

    invoke-direct {v2, v1, v5, v0}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->WrapContentWidthCenter:Landroidx/compose/foundation/layout/WrapContentElement;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    new-instance v2, Landroidx/compose/foundation/layout/WrapContentElement;

    new-instance v5, Landroidx/compose/foundation/layout/Arrangement$spacedBy$2;

    invoke-direct {v5, v0, v6}, Landroidx/compose/foundation/layout/Arrangement$spacedBy$2;-><init>(Landroidx/compose/ui/BiasAlignment$Horizontal;I)V

    invoke-direct {v2, v1, v5, v0}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->WrapContentWidthStart:Landroidx/compose/foundation/layout/WrapContentElement;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    new-instance v1, Landroidx/compose/foundation/layout/WrapContentElement;

    new-instance v2, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    const/4 v5, 0x3

    invoke-direct {v2, v5, v0}, Landroidx/compose/animation/core/InfiniteTransition$run$2;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v3, v2, v0}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentHeightCenter:Landroidx/compose/foundation/layout/WrapContentElement;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    new-instance v1, Landroidx/compose/foundation/layout/WrapContentElement;

    new-instance v2, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    invoke-direct {v2, v5, v0}, Landroidx/compose/animation/core/InfiniteTransition$run$2;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v3, v2, v0}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentHeightTop:Landroidx/compose/foundation/layout/WrapContentElement;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    new-instance v1, Landroidx/compose/foundation/layout/WrapContentElement;

    new-instance v2, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Landroidx/compose/animation/core/InfiniteTransition$run$2;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v4, v2, v0}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentSizeCenter:Landroidx/compose/foundation/layout/WrapContentElement;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    new-instance v1, Landroidx/compose/foundation/layout/WrapContentElement;

    new-instance v2, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    invoke-direct {v2, v3, v0}, Landroidx/compose/animation/core/InfiniteTransition$run$2;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v4, v2, v0}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentSizeTopStart:Landroidx/compose/foundation/layout/WrapContentElement;

    return-void
.end method

.method public static final defaultMinSize-VpY3zN4(FF)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;-><init>(FF)V

    return-object v0
.end method

.method public static final fillMaxHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillElement;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    invoke-direct {v0, v1, p1}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;F)V

    move-object p1, v0

    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    invoke-direct {v0, v1, p1}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;F)V

    move-object p1, v0

    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 7

    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZI)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 6

    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    const/4 v5, 0x0

    move v2, p1

    move v3, p1

    move v4, p1

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZ)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final requiredSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 6

    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZ)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final requiredWidth-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 7

    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p1

    move v1, p1

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZI)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 6

    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    const/4 v5, 0x1

    move v2, p1

    move v3, p1

    move v4, p1

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZ)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 6

    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    const/4 v5, 0x1

    move v3, p1

    move v4, p2

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZ)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 7

    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    const/4 v5, 0x1

    const/16 v6, 0xa

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p1

    move v1, p1

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZI)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final widthIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 7

    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    const/4 v5, 0x1

    const/16 v6, 0xa

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZI)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static wrapContentHeight$default(Landroidx/compose/ui/Modifier;I)Landroidx/compose/ui/Modifier;
    .locals 4

    sget-object p1, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-virtual {p1, p1}, Landroidx/compose/ui/BiasAlignment$Vertical;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentHeightCenter:Landroidx/compose/foundation/layout/WrapContentElement;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/BiasAlignment$Vertical;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentHeightTop:Landroidx/compose/foundation/layout/WrapContentElement;

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/compose/foundation/layout/WrapContentElement;

    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    new-instance v2, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p1}, Landroidx/compose/animation/core/InfiniteTransition$run$2;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static wrapContentSize$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 5

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->WrapContentSizeCenter:Landroidx/compose/foundation/layout/WrapContentElement;

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->WrapContentSizeTopStart:Landroidx/compose/foundation/layout/WrapContentElement;

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/compose/foundation/layout/WrapContentElement;

    sget-object v2, Landroidx/compose/foundation/layout/Direction;->Both:Landroidx/compose/foundation/layout/Direction;

    new-instance v3, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v0}, Landroidx/compose/animation/core/InfiniteTransition$run$2;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static wrapContentWidth$default(Landroidx/compose/ui/Modifier;I)Landroidx/compose/ui/Modifier;
    .locals 4

    sget-object p1, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-virtual {p1, p1}, Landroidx/compose/ui/BiasAlignment$Horizontal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentWidthCenter:Landroidx/compose/foundation/layout/WrapContentElement;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/BiasAlignment$Horizontal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentWidthStart:Landroidx/compose/foundation/layout/WrapContentElement;

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/compose/foundation/layout/WrapContentElement;

    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    new-instance v2, Landroidx/compose/foundation/layout/Arrangement$spacedBy$2;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Landroidx/compose/foundation/layout/Arrangement$spacedBy$2;-><init>(Landroidx/compose/ui/BiasAlignment$Horizontal;I)V

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
