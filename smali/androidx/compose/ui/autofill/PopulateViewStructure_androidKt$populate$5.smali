.class public final Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_populate:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$5;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$5;->$this_populate:Ljava/lang/Object;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/text/font/SystemFontFamily;

    check-cast p2, Landroidx/compose/ui/text/font/FontWeight;

    check-cast p3, Landroidx/compose/ui/text/font/FontStyle;

    iget p3, p3, Landroidx/compose/ui/text/font/FontStyle;->value:I

    check-cast p4, Landroidx/compose/ui/text/font/FontSynthesis;

    iget p4, p4, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    iget-object p0, p0, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$5;->$this_populate:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    check-cast v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve-DPcqOEQ(Landroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    move-result-object p1

    instance-of p2, p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    const-string p3, "null cannot be cast to non-null type android.graphics.Typeface"

    if-nez p2, :cond_0

    new-instance p2, Landroidx/core/view/MenuHostHelper;

    iget-object p4, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Landroidx/core/view/MenuHostHelper;

    invoke-direct {p2, p1, p4}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/compose/ui/text/font/TypefaceResult$Immutable;Landroidx/core/view/MenuHostHelper;)V

    iput-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Landroidx/core/view/MenuHostHelper;

    iget-object p0, p2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object p0, p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/Typeface;

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object p0, p0, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$5;->$this_populate:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/view/ViewStructure;

    sub-int v5, p1, v1

    sub-int v6, p2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
