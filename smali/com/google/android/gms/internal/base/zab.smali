.class public abstract Lcom/google/android/gms/internal/base/zab;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/base/zab;->$r8$classId:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/base/zab;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    .line 2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 3
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void

    .line 4
    :pswitch_0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 5
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/base/zab;->$r8$classId:I

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget v4, v0, Lcom/google/android/gms/internal/base/zab;->$r8$classId:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const v9, 0xffffff

    const/4 v10, 0x1

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_1
    const-string v4, "com.motorola.camera.camerax_extensions.IExtensionEngine"

    if-lt v1, v10, :cond_0

    if-gt v1, v9, :cond_0

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v9, 0x5f4e5446

    if-ne v1, v9, :cond_1

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_1
    const-string v4, "clientDeathListener"

    const-wide/16 v11, -0x1

    const-string v9, "Extension "

    packed-switch v1, :pswitch_data_1

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    goto/16 :goto_1a

    :pswitch_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    const-string/jumbo v6, "results"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0, v2, v1}, Lcom/motorola/camera/camerax_extensions/Extension;->processStream(ILjava/lang/String;)Z

    move-result v7

    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1a

    :pswitch_3
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    const-string v6, "inputResult"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {v0, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v0, v2, v1}, Lcom/motorola/camera/camerax_extensions/Extension;->buildRequest(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    const-string/jumbo v6, "surface"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0, v1, v2}, Lcom/motorola/camera/camerax_extensions/Extension;->configureStream(Landroid/view/Surface;I)Landroid/view/Surface;

    move-result-object v8

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_6

    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v8, v3, v10}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_1a

    :cond_6
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1a

    :pswitch_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    invoke-virtual {v0, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0, v1}, Lcom/motorola/camera/camerax_extensions/Extension;->deinitialize(I)V

    :cond_7
    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1a

    :pswitch_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    invoke-virtual {v0, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, v1}, Lcom/motorola/camera/camerax_extensions/Extension;->initialize(I)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move v7, v10

    goto :goto_5

    :cond_9
    :goto_4
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " failed to initialize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1a

    :pswitch_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/motorola/camera/camerax_extensions/Extension;->getExtensionConfig()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    :goto_6
    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_8
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    cmp-long v4, v1, v11

    if-nez v4, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_7

    :cond_c
    invoke-interface {v0}, Lcom/motorola/camera/camerax_extensions/Extension;->isSupported()Z

    move-result v7

    :goto_7
    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1a

    :pswitch_9
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    const-string v4, "name"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "cameraId"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->context:Landroid/content/Context;

    sget-object v13, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v14, Ljava/security/SecureRandom;

    invoke-direct {v14}, Ljava/security/SecureRandom;-><init>()V

    const/4 v15, 0x4

    new-array v15, v15, [B

    invoke-virtual {v14, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    aget-byte v14, v15, v7

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x18

    aget-byte v8, v15, v10

    and-int/lit16 v8, v8, 0xff

    const/16 v16, 0x10

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v8, v14

    aget-byte v6, v15, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v8

    aget-byte v5, v15, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    sget-object v8, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->EXTENSION_MAP:Ljava/lang/Object;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_d
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v10, v5

    const/16 v5, 0x20

    shl-long/2addr v10, v5

    shl-long v14, v14, v16

    or-long/2addr v10, v14

    int-to-long v14, v8

    or-long/2addr v10, v14

    invoke-virtual {v0, v10, v11}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v5

    if-nez v5, :cond_21

    iget-object v5, v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    if-nez v5, :cond_e

    const-string v0, "Unable to initialize json config"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    const-wide/16 v11, -0x1

    goto/16 :goto_16

    :cond_e
    :try_start_1
    const-string v8, "camera"

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CameraManager;

    if-eqz v8, :cond_f

    invoke-virtual {v8, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v2, 0x0

    goto :goto_a

    :catch_0
    const-string v2, "No access to camera characteristics"

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :goto_a
    if-nez v2, :cond_10

    const-string v0, "Cannot retrieve camera characteristics"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_10
    const-string v8, "imagers"

    const/4 v12, -0x1

    invoke-static {v8, v5, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONArray;

    sget-object v14, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v14}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v8, :cond_12

    if-eqz v14, :cond_12

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v15

    :goto_b
    if-ge v7, v15, :cond_12

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    goto :goto_c

    :cond_11
    add-int/lit8 v7, v7, 0x1

    const/4 v12, -0x1

    goto :goto_b

    :cond_12
    const/4 v7, -0x1

    :goto_c
    const-string v8, "alternate-imager-name"

    const/4 v12, -0x1

    invoke-static {v8, v5, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONArray;

    if-ne v7, v12, :cond_18

    if-eqz v8, :cond_18

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v15

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v15, :cond_17

    move-object/from16 v17, v4

    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-lez v18, :cond_15

    move-object/from16 p1, v8

    const/4 v8, -0x1

    if-ne v7, v8, :cond_14

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    move/from16 v18, v7

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v8, :cond_16

    move/from16 p2, v8

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    move v7, v12

    goto :goto_10

    :cond_13
    add-int/lit8 v7, v7, 0x1

    move/from16 v8, p2

    goto :goto_e

    :cond_14
    move/from16 v18, v7

    goto :goto_f

    :cond_15
    move/from16 v18, v7

    move-object/from16 p1, v8

    :cond_16
    :goto_f
    move/from16 v7, v18

    :goto_10
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, p1

    move-object/from16 v4, v17

    goto :goto_d

    :cond_17
    move-object/from16 v17, v4

    move/from16 v18, v7

    :goto_11
    const/4 v12, -0x1

    goto :goto_12

    :cond_18
    move-object/from16 v17, v4

    goto :goto_11

    :goto_12
    if-ne v7, v12, :cond_19

    const-string v0, "Cannot map sensor name to json index"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_19
    iget-object v4, v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    if-eqz v4, :cond_1a

    iget-object v4, v4, Lkotlin/Pair;->second:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Landroid/util/LongSparseArray;

    goto :goto_13

    :cond_1a
    const/4 v8, 0x0

    :goto_13
    if-nez v8, :cond_1b

    const-string v0, "No client reference found, unable to initialize"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_1b
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_14

    :sswitch_0
    const-string v0, "bokeh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_14

    :cond_1c
    new-instance v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;

    invoke-direct {v0, v7, v5, v2}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_15

    :sswitch_1
    const-string v0, "hdr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_14

    :cond_1d
    new-instance v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;

    invoke-direct {v0, v7, v5, v2}, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-virtual {v0}, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->isSupported()Z

    move-result v1

    if-nez v1, :cond_20

    new-instance v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;

    invoke-direct {v0, v7, v5, v2}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_15

    :sswitch_2
    const-string v4, "beauty"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_14

    :cond_1e
    move-object/from16 v4, v17

    new-instance v17, Lcom/motorola/camera/camerax_extensions/FotonationBeautyExtension;

    iget-object v0, v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/motorola/camera/shared/McfUtil;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move/from16 v18, v7

    invoke-direct/range {v17 .. v22}, Lcom/motorola/camera/camerax_extensions/FotonationBeautyExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    goto :goto_15

    :sswitch_3
    const-string/jumbo v0, "supernight"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not implemented"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_1f
    new-instance v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;

    invoke-direct {v0, v7, v5, v2}, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-virtual {v0}, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->isSupported()Z

    move-result v1

    if-nez v1, :cond_20

    new-instance v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;

    invoke-direct {v0, v7, v5, v2}, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    :cond_20
    :goto_15
    invoke-virtual {v8, v10, v11, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_21
    move-wide v11, v10

    goto :goto_16

    :catch_1
    const-string v0, "Unable to get an number from the cameraId: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :goto_16
    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v11, v12}, Landroid/os/Parcel;->writeLong(J)V

    :goto_17
    const/4 v10, 0x1

    goto :goto_1a

    :pswitch_a
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->removeApp(I)V

    goto :goto_18

    :cond_22
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string v1, "App already removed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_17

    :pswitch_b
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "version"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iget-object v4, v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_23

    sget-object v5, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance v5, Lcom/motorola/camera/camerax_extensions/ExtensionEngine$registerApp$deathRecipient$1;

    invoke-direct {v5, v2, v0}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine$registerApp$deathRecipient$1;-><init>(ILcom/motorola/camera/camerax_extensions/ExtensionEngine;)V

    const/4 v7, 0x0

    invoke-interface {v1, v5, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance v0, Lkotlin/Pair;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    invoke-direct {v0, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    :cond_23
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string v1, "App registration already exists "

    invoke-static {v1, v2, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    :goto_19
    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_17

    :goto_1a
    return v10

    :pswitch_c
    if-le v1, v9, :cond_24

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-eqz v3, :cond_25

    :goto_1b
    const/4 v7, 0x1

    goto :goto_1e

    :cond_24
    invoke-virtual {v0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_25
    check-cast v0, Lcom/google/android/play/core/appupdate/zzo;

    const-string v3, "Parcel data not fully consumed, unread size: "

    if-eq v1, v6, :cond_29

    if-eq v1, v5, :cond_26

    goto :goto_1e

    :cond_26
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    sget v4, Lcom/google/android/play/core/appupdate/internal/zzc;->$r8$clinit:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_27

    const/4 v8, 0x0

    goto :goto_1c

    :cond_27
    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/os/Parcelable;

    :goto_1c
    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-gtz v1, :cond_28

    invoke-interface {v0, v8}, Lcom/google/android/play/core/appupdate/internal/zzh;->zzb(Landroid/os/Bundle;)V

    goto :goto_1b

    :cond_28
    new-instance v0, Landroid/os/BadParcelableException;

    invoke-static {v1, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    sget v4, Lcom/google/android/play/core/appupdate/internal/zzc;->$r8$clinit:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_2a

    const/4 v8, 0x0

    goto :goto_1d

    :cond_2a
    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/os/Parcelable;

    :goto_1d
    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-gtz v1, :cond_2b

    invoke-interface {v0, v8}, Lcom/google/android/play/core/appupdate/internal/zzh;->zzc(Landroid/os/Bundle;)V

    goto :goto_1b

    :goto_1e
    return v7

    :cond_2b
    new-instance v0, Landroid/os/BadParcelableException;

    invoke-static {v1, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    if-le v1, v9, :cond_2c

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v10, 0x1

    goto :goto_1f

    :cond_2c
    invoke-virtual {v0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_2d
    invoke-virtual/range {p0 .. p3}, Lcom/google/android/gms/internal/base/zab;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v10

    :goto_1f
    return v10

    :pswitch_e
    if-le v1, v9, :cond_2e

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v10, 0x1

    goto :goto_20

    :cond_2e
    invoke-virtual {v0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_2f
    invoke-virtual/range {p0 .. p3}, Lcom/google/android/gms/internal/base/zab;->zaa(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v10

    :goto_20
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x659a9683 -> :sswitch_3
        -0x5307ef84 -> :sswitch_2
        0x192f6 -> :sswitch_1
        0x59912e1 -> :sswitch_0
    .end sparse-switch
.end method

.method public abstract zaa(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
.end method

.method public zza(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
