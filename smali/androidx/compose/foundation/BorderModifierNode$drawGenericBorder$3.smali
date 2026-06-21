.class public final Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $cacheImageBitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field public final synthetic $pathBounds:Landroidx/compose/ui/geometry/Rect;

.field public final synthetic $pathBoundsSize:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroidx/compose/ui/graphics/BlendModeColorFilter;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$3;->$pathBounds:Landroidx/compose/ui/geometry/Rect;

    iput-object p2, p0, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$3;->$cacheImageBitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-wide p3, p0, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$3;->$pathBoundsSize:J

    iput-object p5, p0, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$3;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    iget-object p1, p0, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$3;->$pathBounds:Landroidx/compose/ui/geometry/Rect;

    iget v10, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    iget-object v1, p0, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$3;->$cacheImageBitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-wide v2, p0, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$3;->$pathBoundsSize:J

    iget-object v7, p0, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$3;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    iget-object p0, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v4, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object v4, v4, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v4, v10, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    :try_start_0
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    const/4 v8, 0x0

    const/16 v9, 0x37a

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-AZ2fEMs$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidImageBitmap;JJFLandroidx/compose/ui/graphics/ColorFilter;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object p0, p0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v0, v10

    neg-float p1, p1

    invoke-virtual {p0, v0, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object p0, p0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v1, v10

    neg-float p1, p1

    invoke-virtual {p0, v1, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    throw v0
.end method
