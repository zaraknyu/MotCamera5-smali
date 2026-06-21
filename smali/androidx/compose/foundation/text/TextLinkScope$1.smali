.class public final Landroidx/compose/foundation/text/TextLinkScope$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/TextLinkScope$1;

.field public static final INSTANCE$1:Landroidx/compose/foundation/text/TextLinkScope$1;

.field public static final INSTANCE$2:Landroidx/compose/foundation/text/TextLinkScope$1;

.field public static final INSTANCE$3:Landroidx/compose/foundation/text/TextLinkScope$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$1;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/text/TextLinkScope$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/text/TextLinkScope$1;->INSTANCE$1:Landroidx/compose/foundation/text/TextLinkScope$1;

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$1;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/text/TextLinkScope$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/text/TextLinkScope$1;->INSTANCE$2:Landroidx/compose/foundation/text/TextLinkScope$1;

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/text/TextLinkScope$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/text/TextLinkScope$1;->INSTANCE:Landroidx/compose/foundation/text/TextLinkScope$1;

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$1;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/text/TextLinkScope$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/text/TextLinkScope$1;->INSTANCE$3:Landroidx/compose/foundation/text/TextLinkScope$1;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/text/TextLinkScope$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget v0, v0, Landroidx/compose/foundation/text/TextLinkScope$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->LinkTestMarker:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-object v2

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    instance-of v2, v1, Landroidx/compose/ui/text/LinkAnnotation;

    if-eqz v2, :cond_3

    const-string v2, "null cannot be cast to non-null type androidx.compose.ui.text.LinkAnnotation"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/ui/text/LinkAnnotation;

    invoke-virtual {v1}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, v1, Landroidx/compose/ui/text/TextLinkStyles;->style:Landroidx/compose/ui/text/SpanStyle;

    if-nez v3, :cond_0

    iget-object v3, v1, Landroidx/compose/ui/text/TextLinkStyles;->focusedStyle:Landroidx/compose/ui/text/SpanStyle;

    if-nez v3, :cond_0

    iget-object v3, v1, Landroidx/compose/ui/text/TextLinkStyles;->hoveredStyle:Landroidx/compose/ui/text/SpanStyle;

    if-nez v3, :cond_0

    iget-object v1, v1, Landroidx/compose/ui/text/TextLinkStyles;->pressedStyle:Landroidx/compose/ui/text/SpanStyle;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v3, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/compose/ui/text/LinkAnnotation;

    invoke-virtual {v3}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroidx/compose/ui/text/TextLinkStyles;->style:Landroidx/compose/ui/text/SpanStyle;

    if-nez v2, :cond_2

    :cond_1
    new-instance v3, Landroidx/compose/ui/text/SpanStyle;

    const/16 v21, 0x0

    const v22, 0xffff

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v3 .. v22}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    move-object v2, v3

    :cond_2
    iget v3, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v4, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    invoke-direct {v1, v3, v4, v2}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    filled-new-array {v0, v1}, [Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    filled-new-array {v0}, [Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
