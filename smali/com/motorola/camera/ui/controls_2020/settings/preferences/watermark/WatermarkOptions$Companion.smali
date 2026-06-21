.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions$Companion;",
        "",
        "<init>",
        "()V",
        "fromString",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;",
        "str",
        "",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromString(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;
    .locals 12

    const-string/jumbo p0, "str"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "\\((.*)\\)"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    const-string v0, "compile(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "matcher(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lkotlin/text/RegexKt;->access$findNext(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lkotlin/text/MatcherMatchResult;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p0

    check-cast p0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "(\\w+)=(true|false)"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, "input"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz v2, :cond_9

    new-instance v2, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, p0}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/text/Regex$findAll$2;->INSTANCE:Lkotlin/text/Regex$findAll$2;

    new-instance v1, Lkotlin/io/FileTreeWalk;

    invoke-direct {v1, v2, p0}, Lkotlin/io/FileTreeWalk;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Lkotlin/sequences/GeneratorSequence$iterator$1;

    invoke-direct {v2, v1}, Lkotlin/sequences/GeneratorSequence$iterator$1;-><init>(Lkotlin/io/FileTreeWalk;)V

    :goto_0
    invoke-virtual {v2}, Lkotlin/sequences/GeneratorSequence$iterator$1;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lkotlin/sequences/GeneratorSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/text/MatcherMatchResult;

    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v3

    check-cast v3, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v3, p1}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x2

    check-cast v1, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v1, v4}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    const-string p1, "logoEnabled"

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    move v5, p1

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    const-string p1, "dateEnabled"

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    move v6, p1

    goto :goto_2

    :cond_3
    move v6, v0

    :goto_2
    const-string/jumbo p1, "timeEnabled"

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    move v7, p1

    goto :goto_3

    :cond_4
    move v7, v0

    :goto_3
    const-string/jumbo p1, "shootingParamsEnabled"

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    move v8, p1

    goto :goto_4

    :cond_5
    move v8, v0

    :goto_4
    const-string p1, "deviceWatermarkEnabled"

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    move v9, p1

    goto :goto_5

    :cond_6
    move v9, v0

    :goto_5
    const-string/jumbo p1, "signatureEnabled"

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    move v10, p1

    goto :goto_6

    :cond_7
    move v10, v0

    :goto_6
    const-string p1, "autographEnabled"

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_8
    move v11, v0

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;-><init>(ZZZZZZZ)V

    return-object v4

    :cond_9
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start index out of bounds: 0, input length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
