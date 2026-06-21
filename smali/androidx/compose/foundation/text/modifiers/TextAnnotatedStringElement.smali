.class public final Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;",
        "foundation_release"
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
.field public final color:Landroidx/compose/ui/graphics/ColorProducer;

.field public final fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final maxLines:I

.field public final minLines:I

.field public final onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

.field public final onShowTranslation:Lkotlin/jvm/functions/Function1;

.field public final onTextLayout:Lkotlin/jvm/functions/Function1;

.field public final overflow:I

.field public final placeholders:Ljava/util/List;

.field public final softWrap:Z

.field public final style:Landroidx/compose/ui/text/TextStyle;

.field public final text:Landroidx/compose/ui/text/AnnotatedString;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->text:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->style:Landroidx/compose/ui/text/TextStyle;

    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iput-object p4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onTextLayout:Lkotlin/jvm/functions/Function1;

    iput p5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->overflow:I

    iput-boolean p6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->softWrap:Z

    iput p7, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->maxLines:I

    iput p8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->minLines:I

    iput-object p9, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->placeholders:Ljava/util/List;

    iput-object p10, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    iput-object p12, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onShowTranslation:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->text:Landroidx/compose/ui/text/AnnotatedString;

    iput-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->style:Landroidx/compose/ui/text/TextStyle;

    iput-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iput-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onTextLayout:Lkotlin/jvm/functions/Function1;

    iput-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onTextLayout:Lkotlin/jvm/functions/Function1;

    iget v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->overflow:I

    iput v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overflow:I

    iget-boolean v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->softWrap:Z

    iput-boolean v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->softWrap:Z

    iget v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->maxLines:I

    iput v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->maxLines:I

    iget v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->minLines:I

    iput v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->minLines:I

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->placeholders:Ljava/util/List;

    iput-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->placeholders:Ljava/util/List;

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

    iput-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    iput-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onShowTranslation:Lkotlin/jvm/functions/Function1;

    iput-object p0, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onShowTranslation:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;

    iget-object v0, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->text:Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->placeholders:Ljava/util/List;

    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->placeholders:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onTextLayout:Lkotlin/jvm/functions/Function1;

    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onTextLayout:Lkotlin/jvm/functions/Function1;

    if-eq v0, v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onShowTranslation:Lkotlin/jvm/functions/Function1;

    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onShowTranslation:Lkotlin/jvm/functions/Function1;

    if-eq v0, v1, :cond_8

    goto :goto_1

    :cond_8
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->overflow:I

    iget v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->overflow:I

    if-ne v0, v1, :cond_d

    iget-boolean v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->softWrap:Z

    iget-boolean v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->softWrap:Z

    if-eq v0, v1, :cond_9

    goto :goto_1

    :cond_9
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->maxLines:I

    iget v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->maxLines:I

    if-eq v0, v1, :cond_a

    goto :goto_1

    :cond_a
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->minLines:I

    iget v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->minLines:I

    if-eq v0, v1, :cond_b

    goto :goto_1

    :cond_b
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

    if-eq p0, p1, :cond_c

    goto :goto_1

    :cond_c
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->text:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onTextLayout:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->overflow:I

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->softWrap:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->maxLines:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->minLines:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->placeholders:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x3c1

    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onShowTranslation:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 12

    check-cast p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    iget-object v0, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->style:Landroidx/compose/ui/text/TextStyle;

    if-eq v1, v0, :cond_0

    iget-object v1, v1, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/SpanStyle;->hasSameNonLayoutAttributes$ui_text_release(Landroidx/compose/ui/text/SpanStyle;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    iget-object v4, v2, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_4

    iput-object v2, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->text:Landroidx/compose/ui/text/AnnotatedString;

    :cond_4
    if-nez v1, :cond_5

    const/4 v1, 0x0

    iput-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    :cond_5
    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/TextStyle;->hasSameLayoutAffectingAttributes(Landroidx/compose/ui/text/TextStyle;)Z

    move-result v1

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    iput-object v2, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v2, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->placeholders:Ljava/util/List;

    iget-object v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->placeholders:Ljava/util/List;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iput-object v5, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->placeholders:Ljava/util/List;

    move v1, v4

    :cond_6
    iget v2, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->minLines:I

    iget v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->minLines:I

    if-eq v2, v5, :cond_7

    iput v5, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->minLines:I

    move v1, v4

    :cond_7
    iget v2, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->maxLines:I

    iget v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->maxLines:I

    if-eq v2, v5, :cond_8

    iput v5, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->maxLines:I

    move v1, v4

    :cond_8
    iget-boolean v2, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->softWrap:Z

    iget-boolean v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->softWrap:Z

    if-eq v2, v5, :cond_9

    iput-boolean v5, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->softWrap:Z

    move v1, v4

    :cond_9
    iget-object v2, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget-object v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iput-object v5, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move v1, v4

    :cond_a
    iget v2, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overflow:I

    iget v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->overflow:I

    if-ne v2, v5, :cond_b

    move v4, v1

    goto :goto_4

    :cond_b
    iput v5, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overflow:I

    :goto_4
    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onTextLayout:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onTextLayout:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x1

    if-eq v1, v2, :cond_c

    iput-object v2, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onTextLayout:Lkotlin/jvm/functions/Function1;

    move v1, v5

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    :goto_5
    iget-object v2, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

    if-eq v2, v6, :cond_d

    iput-object v6, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

    move v1, v5

    :cond_d
    iget-object v2, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onShowTranslation:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->onShowTranslation:Lkotlin/jvm/functions/Function1;

    if-eq v2, p0, :cond_e

    iput-object p0, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onShowTranslation:Lkotlin/jvm/functions/Function1;

    goto :goto_6

    :cond_e
    move v5, v1

    :goto_6
    if-nez v3, :cond_f

    if-nez v4, :cond_f

    if-eqz v5, :cond_11

    :cond_f
    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    move-result-object p0

    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v6, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget v7, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overflow:I

    iget-boolean v8, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->softWrap:Z

    iget v9, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->maxLines:I

    iget v10, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->minLines:I

    iget-object v11, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->placeholders:Ljava/util/List;

    iput-object v1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v2, v1}, Landroidx/compose/ui/text/TextStyle;->hasSameLayoutAffectingAttributes(Landroidx/compose/ui/text/TextStyle;)Z

    move-result v1

    iput-object v2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    iput-object v2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->paragraphIntrinsics:Lcom/motorola/camera/AppFeatures;

    iput-object v2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    :cond_10
    iput-object v6, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iput v7, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->overflow:I

    iput-boolean v8, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->softWrap:Z

    iput v9, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->maxLines:I

    iput v10, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->minLines:I

    iput-object v11, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->placeholders:Ljava/util/List;

    iput-object v2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->paragraphIntrinsics:Lcom/motorola/camera/AppFeatures;

    iput-object v2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    :cond_11
    iget-boolean p0, p1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez p0, :cond_12

    goto :goto_7

    :cond_12
    if-nez v3, :cond_13

    if-eqz v0, :cond_14

    iget-object p0, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->semanticsTextLayoutResult:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;

    if-eqz p0, :cond_14

    :cond_13
    invoke-static {p1}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_14
    if-nez v3, :cond_15

    if-nez v4, :cond_15

    if-eqz v5, :cond_16

    :cond_15
    invoke-static {p1}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    invoke-static {p1}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    :cond_16
    if-eqz v0, :cond_17

    invoke-static {p1}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    :cond_17
    :goto_7
    return-void
.end method
