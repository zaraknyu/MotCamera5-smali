.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;
.super Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u000b\u000cB1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "com/google/android/gms/internal/mlkit_vision_common/zzkq",
        "Resolution",
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
.field public static final synthetic $r8$clinit:I


# instance fields
.field public resolutionList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->resolutionList:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const p3, 0x7f04019d

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final onClickWhenDisabled()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->Companion:Landroidx/collection/internal/Lock;

    const-string v1, "getKey(...)"

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/collection/internal/Lock;->getSingleSelected(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_REAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eq v1, v2, :cond_2

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-ne v1, v3, :cond_5

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v1

    if-eqz v1, :cond_3

    const p0, 0x7f1205ec

    goto :goto_2

    :cond_3
    if-eqz p0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    :cond_4
    if-ne v0, v2, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMpRemosaicModeSupported()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    return-void

    :cond_6
    const p0, 0x7f1205dc

    goto :goto_2

    :cond_7
    const p0, 0x7f1205ed

    :goto_2
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p0, v0, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "getEntryValues(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    if-eqz p1, :cond_b

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->Companion:Landroidx/collection/internal/Lock;

    const-string v2, "getKey(...)"

    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/collection/internal/Lock;->getSingleSelected(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->getCameraType:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/CameraType;

    if-nez v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    const-string v4, "getCurrentCameraType(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object v4, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lkotlin/collections/ArraysKt;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->resolutionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    iput-boolean v5, v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isSelected:Z

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->resolutionList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "get(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isSelected:Z

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->string:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {v3, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_REAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object p1, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object p1, v2

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result p0

    if-nez p0, :cond_9

    :cond_7
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v2, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    :cond_8
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-eq p0, p1, :cond_9

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne p0, p1, :cond_a

    :cond_9
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->shouldHideHighResolution(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-nez p0, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p0

    invoke-static {p0, v0, v5}, Lcom/motorola/camera/settings/SettingsHelper;->isStandardAspectRatioMode(ILcom/motorola/camera/settings/CameraType;Z)Z

    move-result p0

    if-nez p0, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldLimitNightSize()Z

    move-result p0

    if-nez p0, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldLimitPortraitSize()Z

    move-result p0

    if-nez p0, :cond_b

    :cond_a
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p1, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p1, v0, p0, v1}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    invoke-static {v1, v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->consistZoomBlendingWithMain(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;)V

    :catch_0
    :cond_b
    :goto_3
    return-void
.end method
