.class public final Lcom/motorola/camera/settings/Setting;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAllowedValues:Ljava/util/List;

.field public final mAndroidIconMap:Ljava/util/HashMap;

.field public final mCacheBehavior:Lcom/motorola/camera/settings/CacheBehavior;

.field public mContentDescriptionRes:I

.field public mDefaultValue:Ljava/lang/Object;

.field public final mDisabledListeners:Ljava/util/Set;

.field public final mDisabledValues:Ljava/util/HashSet;

.field public mEnabled:Z

.field public mIsPermanentLock:Z

.field public final mKey:Ljava/lang/String;

.field public final mListeners:Ljava/util/Set;

.field public mLocked:Z

.field public final mLockedListeners:Ljava/util/Set;

.field public final mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

.field public mSettingDialogTitleRes:I

.field public final mSupportedValues:Ljava/util/EnumMap;

.field public mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

.field public mValue:Ljava/lang/Object;

.field public final mValueToResMap:Ljava/util/HashMap;

.field public final mValueToSummaryMap:Ljava/util/HashMap;

.field public final mValueToToastResMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(IILjava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/settings/Setting;->mSettingDialogTitleRes:I

    iput v0, p0, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/motorola/camera/settings/Setting;->mSupportedValues:Ljava/util/EnumMap;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/camera/settings/Setting;->mAllowedValues:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/settings/Setting;->mValueToResMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/settings/Setting;->mValueToSummaryMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/settings/Setting;->mValueToToastResMap:Ljava/util/HashMap;

    sget-object v0, Lcom/motorola/camera/settings/PersistBehavior;->VOID_PERSIST_BEHAVIOR:Lcom/motorola/camera/settings/PersistBehavior;

    iput-object v0, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    sget-object v0, Lcom/motorola/camera/settings/CacheBehavior;->VOID_CACHE_BEHAVIOR:Lcom/motorola/camera/settings/CacheBehavior;

    iput-object v0, p0, Lcom/motorola/camera/settings/Setting;->mCacheBehavior:Lcom/motorola/camera/settings/CacheBehavior;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/settings/Setting;->mListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/settings/Setting;->mAndroidIconMap:Ljava/util/HashMap;

    sget-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

    iput-object v0, p0, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/settings/Setting;->mEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    iput-boolean v1, p0, Lcom/motorola/camera/settings/Setting;->mIsPermanentLock:Z

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/settings/Setting;->mLockedListeners:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/settings/Setting;->mDisabledValues:Ljava/util/HashSet;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/settings/Setting;->mDisabledListeners:Ljava/util/Set;

    iput-object p4, p0, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    if-eq p1, v0, :cond_b

    instance-of p4, p3, Ljava/lang/String;

    if-eqz p4, :cond_0

    new-instance p4, Lcom/motorola/camera/settings/PersistEnumBehavior;

    const/16 v1, 0x8

    invoke-direct {p4, p1, v1}, Lcom/motorola/camera/settings/PersistEnumBehavior;-><init>(II)V

    iput-object p4, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    goto/16 :goto_0

    :cond_0
    instance-of p4, p3, Ljava/lang/Integer;

    if-eqz p4, :cond_1

    new-instance p4, Lcom/motorola/camera/settings/PersistEnumBehavior;

    const/4 v1, 0x4

    invoke-direct {p4, p1, v1}, Lcom/motorola/camera/settings/PersistEnumBehavior;-><init>(II)V

    iput-object p4, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    goto/16 :goto_0

    :cond_1
    instance-of p4, p3, Ljava/lang/Boolean;

    if-eqz p4, :cond_2

    new-instance p4, Lcom/motorola/camera/settings/PersistEnumBehavior;

    const/4 v1, 0x2

    invoke-direct {p4, p1, v1}, Lcom/motorola/camera/settings/PersistEnumBehavior;-><init>(II)V

    iput-object p4, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    goto/16 :goto_0

    :cond_2
    instance-of p4, p3, Landroid/util/Size;

    if-eqz p4, :cond_3

    new-instance p4, Lcom/motorola/camera/settings/PersistEnumBehavior;

    const/4 v1, 0x6

    invoke-direct {p4, p1, v1}, Lcom/motorola/camera/settings/PersistEnumBehavior;-><init>(II)V

    iput-object p4, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    goto/16 :goto_0

    :cond_3
    instance-of p4, p3, Lcom/motorola/camera/VideoFormat;

    if-eqz p4, :cond_4

    new-instance p4, Lcom/motorola/camera/settings/PersistEnumBehavior;

    const/16 v1, 0x9

    invoke-direct {p4, p1, v1}, Lcom/motorola/camera/settings/PersistEnumBehavior;-><init>(II)V

    iput-object p4, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    goto :goto_0

    :cond_4
    instance-of p4, p3, Ljava/lang/Long;

    if-eqz p4, :cond_5

    new-instance p4, Lcom/motorola/camera/settings/PersistEnumBehavior;

    const/4 v1, 0x5

    invoke-direct {p4, p1, v1}, Lcom/motorola/camera/settings/PersistEnumBehavior;-><init>(II)V

    iput-object p4, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    goto :goto_0

    :cond_5
    instance-of p4, p3, Ljava/lang/Float;

    if-eqz p4, :cond_6

    new-instance p4, Lcom/motorola/camera/settings/PersistEnumBehavior;

    const/4 v1, 0x3

    invoke-direct {p4, p1, v1}, Lcom/motorola/camera/settings/PersistEnumBehavior;-><init>(II)V

    iput-object p4, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    goto :goto_0

    :cond_6
    instance-of p4, p3, [Ljava/lang/String;

    if-eqz p4, :cond_7

    new-instance p4, Lcom/motorola/camera/settings/PersistEnumBehavior;

    const/4 v1, 0x7

    invoke-direct {p4, p1, v1}, Lcom/motorola/camera/settings/PersistEnumBehavior;-><init>(II)V

    iput-object p4, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    goto :goto_0

    :cond_7
    instance-of p4, p3, Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-eqz p4, :cond_8

    new-instance p4, Lcom/motorola/camera/settings/PersistEnumBehavior;

    const/4 v1, 0x1

    invoke-direct {p4, p1, v1}, Lcom/motorola/camera/settings/PersistEnumBehavior;-><init>(II)V

    iput-object p4, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    goto :goto_0

    :cond_8
    instance-of p4, p3, Lcom/motorola/camera/settings/CameraType;

    if-eqz p4, :cond_9

    new-instance p4, Lcom/motorola/camera/settings/PersistEnumBehavior;

    const/4 v1, 0x0

    invoke-direct {p4, p1, v1}, Lcom/motorola/camera/settings/PersistEnumBehavior;-><init>(II)V

    iput-object p4, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    goto :goto_0

    :cond_9
    instance-of p4, p3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    if-eqz p4, :cond_a

    new-instance p4, Lcom/motorola/camera/settings/PersistBehaviorWatermarkOptions;

    invoke-direct {p4, p1}, Lcom/motorola/camera/settings/PersistBehavior;-><init>(I)V

    iput-object p4, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    goto :goto_0

    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Requesting to persist a setting of an unknown type:"

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_0
    if-eq p2, v0, :cond_f

    instance-of p1, p3, Landroid/util/Size;

    if-eqz p1, :cond_c

    new-instance p1, Lcom/motorola/camera/settings/CacheSizeBehavior;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/settings/CacheSizeBehavior;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/settings/Setting;->mCacheBehavior:Lcom/motorola/camera/settings/CacheBehavior;

    return-void

    :cond_c
    instance-of p1, p3, Lcom/motorola/camera/VideoFormat;

    if-eqz p1, :cond_d

    new-instance p1, Lcom/motorola/camera/settings/CacheSizeBehavior;

    const/4 p3, 0x2

    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/settings/CacheSizeBehavior;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/settings/Setting;->mCacheBehavior:Lcom/motorola/camera/settings/CacheBehavior;

    return-void

    :cond_d
    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_e

    new-instance p1, Lcom/motorola/camera/settings/CacheSizeBehavior;

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/settings/CacheSizeBehavior;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/settings/Setting;->mCacheBehavior:Lcom/motorola/camera/settings/CacheBehavior;

    return-void

    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Requesting to cache a setting of an unknown type:"

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    return-void
.end method


# virtual methods
.method public final addValueToAndroidIconEntry(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mAndroidIconMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addValueToSummaryEntry(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValueToSummaryMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clearCachedValue()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget v0, v0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistType:I

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/CameraType;->values()[Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    const-string v5, "."

    invoke-static {p0, v5}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".FRONT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".BACK"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".EXTERNAL"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_1
    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".PHOTO"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".VIDEO"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final getAllowedAndroidIcons()Ljava/util/ArrayList;
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/settings/Setting;->mAndroidIconMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getAllowedValues()Ljava/util/List;
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/settings/Setting;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mAllowedValues:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final getAndroidIcon(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mAndroidIconMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public final getCheckValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getString(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValueToResMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public final getStringsForValues(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/settings/Setting;->mValueToResMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getSummaryStringsForValues(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/settings/Setting;->mValueToSummaryMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mSupportedValues:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public final setAllowedValues(Ljava/util/List;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/motorola/camera/settings/Setting;->mAllowedValues:Ljava/util/List;

    return-void

    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/motorola/camera/settings/Setting;->mAllowedValues:Ljava/util/List;

    return-void
.end method

.method public final setLocked(Ljava/lang/Object;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-ne v0, p2, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p2, p0, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    invoke-virtual {p2, p1, p0, v0}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0, p2}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/settings/Setting;->mLockedListeners:Ljava/util/Set;

    monitor-enter p1

    .line 11
    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/settings/Setting;->mLockedListeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda2;

    .line 12
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda2;->onLockedChange(Lcom/motorola/camera/settings/Setting;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 13
    :cond_3
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setLocked(Z)V
    .locals 2

    .line 14
    iget-boolean v0, p0, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 15
    :cond_0
    iput-boolean p1, p0, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/settings/Setting;->mLockedListeners:Ljava/util/Set;

    monitor-enter p1

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/settings/Setting;->mLockedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda2;

    .line 18
    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda2;->onLockedChange(Lcom/motorola/camera/settings/Setting;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 19
    :cond_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/settings/Setting;->setValuePriv(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Setting"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  is locked, will NOT persist value"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    iget-object v0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    return-void
.end method

.method public final setValueFromPersist(Ljava/lang/Object;Z)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/settings/Setting;->setValuePriv(Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized setValuePriv(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    iget-object p1, p0, Lcom/motorola/camera/settings/Setting;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-interface {v0, p0}, Lcom/motorola/camera/settings/SettingChangeListener;->onChange(Lcom/motorola/camera/settings/Setting;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, " supportedValues {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/camera/settings/Setting;->mSupportedValues:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v4, " cameraType:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "null"

    iget-object v4, p0, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    if-nez v4, :cond_1

    move-object v4, v3

    :cond_1
    iget-object v5, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    if-nez v5, :cond_2

    move-object v5, v3

    :cond_2
    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/motorola/camera/settings/Setting;->mEnabled:Z

    if-eqz p0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, "DISABLED"

    :cond_4
    :goto_1
    filled-new-array {v4, v5, v1, v3}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s = %s %s allowedValues:%s"

    invoke-static {v2, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
