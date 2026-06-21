.class public final Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $maxLines:I

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $onClick:Lkotlin/jvm/functions/Function1;

.field public final synthetic $onTextLayout:Lkotlin/jvm/functions/Function1;

.field public final synthetic $overflow:I

.field public final synthetic $softWrap:Z

.field public final synthetic $style:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic $text:Landroidx/compose/ui/text/AnnotatedString;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$text:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p2, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$style:Landroidx/compose/ui/text/TextStyle;

    iput-boolean p4, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$softWrap:Z

    iput p5, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$overflow:I

    iput p6, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$maxLines:I

    iput-object p7, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$onTextLayout:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$onClick:Lkotlin/jvm/functions/Function1;

    iput p9, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v9

    iget-object v0, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v1, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$style:Landroidx/compose/ui/text/TextStyle;

    iget-boolean v3, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$softWrap:Z

    iget v4, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$overflow:I

    iget v5, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$maxLines:I

    iget-object v6, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$onTextLayout:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$onClick:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/text/ClickableTextKt;->ClickableText-4YKlhWE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
