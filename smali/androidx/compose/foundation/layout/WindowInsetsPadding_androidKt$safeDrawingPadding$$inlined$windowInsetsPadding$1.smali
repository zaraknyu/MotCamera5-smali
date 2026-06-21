.class public final Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeDrawingPadding$$inlined$windowInsetsPadding$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeDrawingPadding$$inlined$windowInsetsPadding$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget p0, p0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeDrawingPadding$$inlined$windowInsetsPadding$1;->$r8$classId:I

    const/4 v0, 0x0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    const v2, 0x15733969

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    invoke-static {p2}, Landroidx/compose/foundation/layout/Arrangement$End$1;->current(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    if-nez p1, :cond_0

    if-ne p3, v1, :cond_1

    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->navigationBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    new-instance p3, Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    invoke-direct {p3, p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;-><init>(Landroidx/compose/foundation/layout/WindowInsets;)V

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast p3, Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p3

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    invoke-static {p2}, Landroidx/compose/foundation/layout/Arrangement$End$1;->current(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    if-nez p1, :cond_2

    if-ne p3, v1, :cond_3

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->safeDrawing:Landroidx/compose/foundation/layout/UnionInsets;

    new-instance p3, Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    invoke-direct {p3, p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;-><init>(Landroidx/compose/foundation/layout/WindowInsets;)V

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast p3, Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
