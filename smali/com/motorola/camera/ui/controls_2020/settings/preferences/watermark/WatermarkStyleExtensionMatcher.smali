.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$BuildTarget;,
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$DeviceNames;,
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0003\u000c\r\u000eB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005J\u0010\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000bR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher;",
        "",
        "<init>",
        "()V",
        "styleRules",
        "",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;",
        "match",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;",
        "preferredStyleOrNull",
        "firstUse",
        "",
        "BuildTarget",
        "DeviceNames",
        "StyleCondition",
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


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher;

.field private static final styleRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$BuildTarget;->PRC:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$BuildTarget;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string/jumbo v2, "roadstr"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;-><init>(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$BuildTarget;Ljava/util/List;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v4, v3

    const-string v3, "aito2"

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;-><init>(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$BuildTarget;Ljava/util/List;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v1, v2}, [Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher;->styleRules:Ljava/util/List;

    const/16 v0, 0x8

    sput v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final match()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;",
            ">;"
        }
    .end annotation

    sget-boolean p0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result p0

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDevice(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher;->styleRules:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;

    invoke-virtual {v4, v0, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;->matches(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;->getStyles()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public final preferredStyleOrNull(Z)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;
    .locals 5

    sget-boolean p0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result p0

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher;->styleRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v0, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;->matches(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    check-cast v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;

    if-nez v2, :cond_2

    return-object v3

    :cond_2
    if-eqz p1, :cond_5

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;->getFirstUsePreferred()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;->getStyles()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    if-ne v0, p0, :cond_4

    return-object p0

    :cond_5
    :goto_1
    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher$StyleCondition;->getStyles()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    return-object p0
.end method
