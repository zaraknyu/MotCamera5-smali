.class public final Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

.field public static final INSTANCE$1:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

.field public static final INSTANCE$2:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

.field public static final INSTANCE$3:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;->INSTANCE$1:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

    new-instance v0, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;->INSTANCE$2:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

    new-instance v0, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;->INSTANCE$3:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

    new-instance v0, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;->INSTANCE:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/platform/RenderNodeApi29;

    check-cast p2, Landroid/graphics/Matrix;

    iget-object p0, p1, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, p2}, Landroid/graphics/RenderNode;->getMatrix(Landroid/graphics/Matrix;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    and-int/lit8 p2, p0, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p0, v1

    invoke-virtual {p1, p0, p2}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    check-cast p2, Landroidx/compose/ui/semantics/SemanticsNode;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget-object p1, p1, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TraversalIndex:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object p1, p1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p1, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, p0

    :cond_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object p2, p2, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object p2, p2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p2, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    move-object p0, p2

    :goto_2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
