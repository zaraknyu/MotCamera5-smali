.class public final Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $$changed1:I

.field public final synthetic $fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final synthetic $hasInlineContent:Z

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $onShowTranslation:Lkotlin/jvm/functions/Function1;

.field public final synthetic $onTextLayout:Lkotlin/jvm/functions/Function1;

.field public final synthetic $style:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic $text:Landroidx/compose/ui/text/AnnotatedString;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$text:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p3, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$onTextLayout:Lkotlin/jvm/functions/Function1;

    iput-boolean p4, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$hasInlineContent:Z

    iput-object p5, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$style:Landroidx/compose/ui/text/TextStyle;

    iput-object p6, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iput-object p7, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$onShowTranslation:Lkotlin/jvm/functions/Function1;

    iput p8, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$$changed:I

    iput p9, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$$changed1:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v8

    iget p1, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$$changed1:I

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v9

    iget-object v0, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$onTextLayout:Lkotlin/jvm/functions/Function1;

    iget-boolean v3, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$hasInlineContent:Z

    iget-object v4, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$style:Landroidx/compose/ui/text/TextStyle;

    iget-object v5, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget-object v6, p0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;->$onShowTranslation:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/text/BasicTextKt;->LayoutWithLinksAndInlineContent-11Od_4g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
