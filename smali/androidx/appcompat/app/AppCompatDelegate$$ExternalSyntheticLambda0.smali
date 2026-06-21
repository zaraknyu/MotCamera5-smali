.class public final synthetic Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    sget-object v1, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/google/common/base/Splitter;

    monitor-enter v1

    :try_start_0
    iget v6, v1, Lcom/google/common/base/Splitter;->limit:I

    if-eq v6, v5, :cond_0

    monitor-exit v1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    iget-object v6, v1, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v6, [Landroid/media/SoundPool;

    new-instance v7, Landroid/media/SoundPool$Builder;

    invoke-direct {v7}, Landroid/media/SoundPool$Builder;-><init>()V

    new-instance v8, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v8}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v8, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/16 v8, 0xd

    invoke-virtual {v2, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v2

    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v2

    aput-object v2, v6, v3

    iget-object v2, v1, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v2, [Landroid/media/SoundPool;

    new-instance v6, Landroid/media/SoundPool$Builder;

    invoke-direct {v6}, Landroid/media/SoundPool$Builder;-><init>()V

    new-instance v8, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v8}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v8, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->values()[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    move-result-object v2

    array-length v6, v2

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v2, v7

    sget-object v9, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/google/common/base/Splitter;

    iget-object v10, v9, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v10, Ljava/util/EnumMap;

    iget-object v9, v9, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v9, [Landroid/media/SoundPool;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v9, v9, v3

    iget v11, v8, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->mRes:I

    invoke-virtual {v9, v0, v11, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/google/common/base/Splitter;

    iput v4, v0, Lcom/google/common/base/Splitter;->limit:I

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :goto_1
    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    const-string v1, ""

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider;->sAccessMap:Ljava/util/Map;

    const-string v2, "edit"

    sget-object v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f030009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    const v9, 0x7f030004

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    const v10, 0x7f030007

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v10

    const v11, 0x7f030008

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v11

    const v12, 0x7f030003

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f030006

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f030005

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    move v14, v3

    :goto_3
    array-length v15, v12

    if-ge v14, v15, :cond_a

    invoke-static {}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->values()[Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object v15

    move/from16 v16, v4

    array-length v4, v15

    move/from16 v17, v5

    move v5, v3

    :goto_4
    if-ge v5, v4, :cond_3

    aget-object v3, v15, v5

    move-object/from16 p0, v0

    iget v0, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mIndex:I

    if-ne v0, v14, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    const/4 v3, 0x0

    goto :goto_4

    :cond_3
    move-object/from16 p0, v0

    move-object v3, v6

    :goto_5
    if-ne v3, v6, :cond_5

    iget v0, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mIndex:I

    if-eq v0, v14, :cond_5

    :cond_4
    move-object/from16 v18, v2

    goto/16 :goto_8

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v8, v14, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mNameResId:I

    invoke-virtual {v9, v14, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mDescriptionResId:I

    invoke-virtual {v10, v14, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mEditDescriptionResId:I

    invoke-virtual {v11, v14, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mIconResId:I

    const-string v0, "badge"

    aget-object v4, v12, v14

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    aget-object v0, v12, v14

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move/from16 v0, v17

    goto :goto_6

    :cond_7
    const-string v0, "badge_icon_only"

    aget-object v4, v12, v14

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    move/from16 v0, v17

    iput-boolean v0, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mIconOnly:Z

    goto :goto_7

    :goto_6
    iget v4, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    or-int/2addr v4, v0

    iput v4, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    :cond_8
    :goto_7
    aget-object v0, v13, v14

    aget-object v4, v7, v14

    aget-object v5, v12, v14

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sPhotoShotPattern:Ljava/util/regex/Pattern;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v15, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    move-object/from16 v18, v2

    const/4 v2, 0x0

    invoke-virtual {v5, v15, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget v2, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    iget-object v2, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityPackageArray:Landroid/util/SparseArray;

    move/from16 v5, v16

    invoke-virtual {v2, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityClassArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    :goto_8
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v18

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_a
    move-object/from16 p0, v0

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->EDITOR_LAYER:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v3, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v3, Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->SCAN_EDITOR:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->PORTRAIT_NO_DEPTH_MAP:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Depth:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    invoke-virtual {v4}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->removeEditConfiguration()V

    :cond_b
    sget-object v5, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Layer:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    invoke-virtual {v5}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v2, :cond_c

    sget v2, Lcom/motorola/camera/provider/photos/LayerActivity;->$r8$clinit:I

    const-string v2, "com.motorola.photoeditor"

    const-string v6, "com.android.gallery3d.filtershow.FilterShowLayerActivity"

    sget-object v7, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sPhotoShotPattern:Ljava/util/regex/Pattern;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v10, v2, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v7, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    invoke-virtual {v5}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->removeEditConfiguration()V

    :cond_d
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    invoke-virtual {v2}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v5

    if-eqz v5, :cond_e

    if-nez v3, :cond_e

    invoke-virtual {v2}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->removeEditConfiguration()V

    :cond_e
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Portrait:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    invoke-virtual {v2}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v4}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    const/4 v5, 0x2

    or-int/2addr v3, v5

    iput v3, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    iget-object v3, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityPackageArray:Landroid/util/SparseArray;

    iget-object v6, v4, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityPackageArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityClassArray:Landroid/util/SparseArray;

    iget-object v4, v4, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityClassArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_f
    if-eqz v0, :cond_10

    iget v0, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    :cond_10
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_1
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    const-string v1, "locale"

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1c

    sget-object v4, Landroidx/appcompat/app/AppCompatDelegate;->sActivityDelegates:Landroidx/collection/ArraySet;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroidx/collection/ArrayMap$KeyIterator;

    invoke-direct {v5, v4}, Landroidx/collection/ArrayMap$KeyIterator;-><init>(Landroidx/collection/ArraySet;)V

    :cond_11
    invoke-virtual {v5}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_12

    invoke-virtual {v5}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v4, :cond_11

    check-cast v4, Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_11

    invoke-virtual {v4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_9

    :cond_12
    move-object v4, v6

    :goto_9
    if-eqz v4, :cond_13

    invoke-static {v4}, Landroidx/appcompat/app/AppCompatDelegate$Api33Impl;->localeManagerGetApplicationLocales(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v4

    new-instance v5, Landroidx/core/os/LocaleListCompat;

    new-instance v7, Landroidx/core/os/LocaleListPlatformWrapper;

    invoke-direct {v7, v4}, Landroidx/core/os/LocaleListPlatformWrapper;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v5, v7}, Landroidx/core/os/LocaleListCompat;-><init>(Landroidx/core/os/LocaleListPlatformWrapper;)V

    goto :goto_a

    :cond_13
    sget-object v5, Landroidx/core/os/LocaleListCompat;->sEmptyLocaleList:Landroidx/core/os/LocaleListCompat;

    :goto_a
    iget-object v4, v5, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListPlatformWrapper;

    iget-object v4, v4, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v4}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    sget-object v4, Landroidx/core/app/NavUtils;->sAppLocaleStorageSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    const-string v5, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v7, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-virtual {v0, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-interface {v8, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    :cond_14
    :goto_b
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_17

    const/4 v11, 0x3

    if-ne v10, v11, :cond_15

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v9, :cond_17

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_10

    :cond_15
    :goto_c
    if-eq v10, v11, :cond_14

    if-ne v10, v2, :cond_16

    goto :goto_b

    :cond_16
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "locales"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    const-string v2, "application_locales"

    invoke-interface {v8, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_17
    if-eqz v7, :cond_18

    :goto_d
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v0

    goto :goto_12

    :catch_0
    :try_start_5
    const-string v2, "AppLocalesStorageHelper"

    const-string v6, "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v7, :cond_18

    goto :goto_d

    :catch_1
    :cond_18
    :goto_e
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_f

    :cond_19
    const-string v2, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :goto_f
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_11

    :goto_10
    if-eqz v7, :cond_1a

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_2
    :cond_1a
    :try_start_8
    throw v0

    :catch_3
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {v5}, Landroidx/appcompat/app/AppCompatDelegate$Api24Impl;->localeListForLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/appcompat/app/AppCompatDelegate$Api33Impl;->localeManagerSetApplicationLocales(Ljava/lang/Object;Landroid/os/LocaleList;)V

    goto :goto_13

    :goto_12
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :cond_1b
    :goto_13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_1c
    sput-boolean v5, Landroidx/appcompat/app/AppCompatDelegate;->sIsFrameworkSyncChecked:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
