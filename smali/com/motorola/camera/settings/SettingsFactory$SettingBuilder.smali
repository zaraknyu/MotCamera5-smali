.class public final Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAllowedValues:Ljava/util/List;

.field public mAndroidIcons:[I

.field public mCacheType:I

.field public mContentDescription:I

.field public final mDefaultValue:Ljava/lang/Object;

.field public mDialogTitle:I

.field public final mName:Ljava/lang/String;

.field public mPersistType:I

.field public mResources:[I

.field public mToast:[I

.field public mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 5
    iput v0, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mCacheType:I

    .line 6
    sget-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

    iput-object v0, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 7
    iput-object p3, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mToast:[I

    .line 8
    iput-object p3, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    const/4 p3, -0x1

    .line 9
    iput p3, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    .line 10
    iput p3, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 11
    iput-object p1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDefaultValue:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final allowedValues(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    return-void
.end method

.method public final build()Lcom/motorola/camera/settings/Setting;
    .locals 5

    new-instance v0, Lcom/motorola/camera/settings/Setting;

    iget v1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    iget v2, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mCacheType:I

    iget-object v3, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDefaultValue:Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/camera/settings/Setting;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    if-eqz v1, :cond_3

    iput-object v1, v0, Lcom/motorola/camera/settings/Setting;->mAllowedValues:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    if-eqz v3, :cond_0

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/settings/Setting;->mValueToResMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mToast:[I

    if-eqz v3, :cond_1

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/settings/Setting;->mValueToToastResMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    if-eqz v3, :cond_2

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/settings/Setting;->addValueToAndroidIconEntry(Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iput v1, v0, Lcom/motorola/camera/settings/Setting;->mSettingDialogTitleRes:I

    :cond_4
    iget v1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    if-eq v1, v2, :cond_5

    iput v1, v0, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    iput-object p0, v0, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    return-object v0
.end method

.method public final cacheType()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mCacheType:I

    return-void
.end method

.method public final persistType(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    return-void
.end method

.method public final updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    return-void
.end method
