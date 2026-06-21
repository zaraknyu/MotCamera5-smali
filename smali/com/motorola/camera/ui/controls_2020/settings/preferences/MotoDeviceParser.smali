.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoDeviceParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HIGH_END_SERIES:Ljava/util/Set;

.field public static final LOW_END_SERIES:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "s"

    const-string/jumbo v1, "x"

    const-string/jumbo v2, "razr"

    const-string v3, "edge"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoDeviceParser;->HIGH_END_SERIES:Ljava/util/Set;

    const-string v0, "g"

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoDeviceParser;->LOW_END_SERIES:Ljava/util/Set;

    return-void
.end method

.method public static categorizeMotoDevice(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;
    .locals 4

    const-string v0, " "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->drop(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_a

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->CARRIER_INFO:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "docomo"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_VENDOR:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_VENDOR_TEXT:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v1}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkotlin/text/RegexOption;->$VALUES:[Lkotlin/text/RegexOption;

    const/16 v2, 0x42

    const-string v3, "\\bg\\b"

    invoke-static {v3, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "compile(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    :cond_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;->LOW_END:Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;

    return-object p0

    :cond_3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoDeviceParser;->HIGH_END_SERIES:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;->HIGH_END:Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;

    return-object p0

    :cond_6
    :goto_1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoDeviceParser;->LOW_END_SERIES:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;->LOW_END:Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;

    return-object p0

    :cond_9
    :goto_2
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;->OTHER:Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;

    return-object p0

    :cond_a
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;->OTHER:Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;

    return-object p0
.end method
