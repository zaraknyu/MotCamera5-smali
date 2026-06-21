.class public Landroidx/profileinstaller/ProfileInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p2, :cond_0

    goto/16 :goto_28

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidx.profileinstaller.action.INSTALL_PROFILE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "ProfileInstaller"

    const/4 v6, 0x7

    const/4 v7, 0x0

    if-eqz v3, :cond_13

    new-instance v2, Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/tasks/zzad;

    const/16 v3, 0x12

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    new-instance v0, Ljava/io/File;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    :try_start_0
    invoke-virtual {v8, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_f

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Installing profile for "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroidx/profileinstaller/Encoding;->V015_S:[B

    sget-object v11, Landroidx/profileinstaller/Encoding;->MAGIC_PROF:[B

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/io/File;

    const-string v14, "/data/misc/profiles/cur/0"

    invoke-direct {v13, v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "primary.prof"

    invoke-direct {v12, v13, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Landroidx/profileinstaller/DeviceProfileWriter;

    const-string v13, "dexopt/baseline.prof"

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v14, 0x0

    iput-boolean v14, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    iput-object v2, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v0, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    iput-object v12, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v14, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {v12}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3, v14, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/io/IOException;)V

    goto/16 :goto_26

    :cond_1
    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3, v14, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    goto/16 :goto_26

    :cond_2
    const/4 v12, 0x1

    iput-boolean v12, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    const/4 v15, 0x6

    :try_start_2
    invoke-virtual {v3, v9, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->openStreamFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v13, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v2, v15, v0}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    :goto_0
    move-object v13, v7

    :goto_1
    const-string v15, "Invalid magic"

    const/16 v12, 0x8

    if-eqz v13, :cond_4

    :try_start_3
    invoke-static {v13, v14}, Landroidx/profileinstaller/Encoding;->read(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {v11, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v13, v14}, Landroidx/profileinstaller/Encoding;->read(Ljava/io/InputStream;I)[B

    move-result-object v0

    iget-object v4, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v13, v0, v4}, Landroidx/profileinstaller/Encoding;->readProfile(Ljava/io/FileInputStream;[BLjava/lang/String;)[Landroidx/profileinstaller/DexProfileData;

    move-result-object v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_4

    :cond_3
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    invoke-virtual {v2, v12, v0}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    :try_start_7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_5

    :goto_4
    :try_start_8
    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :goto_5
    move-object v4, v7

    :goto_6
    iput-object v4, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    goto :goto_9

    :goto_7
    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    :goto_8
    throw v1

    :cond_4
    :goto_9
    iget-object v0, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    check-cast v0, [Landroidx/profileinstaller/DexProfileData;

    if-eqz v0, :cond_8

    :try_start_a
    const-string v4, "dexopt/baseline.profm"

    invoke-virtual {v3, v9, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->openStreamFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_7

    if-eqz v4, :cond_6

    :try_start_b
    sget-object v9, Landroidx/profileinstaller/Encoding;->MAGIC_PROFM:[B

    invoke-static {v4, v14}, Landroidx/profileinstaller/Encoding;->read(Ljava/io/InputStream;I)[B

    move-result-object v13

    invoke-static {v9, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v4, v14}, Landroidx/profileinstaller/Encoding;->read(Ljava/io/InputStream;I)[B

    move-result-object v9

    invoke-static {v4, v9, v5, v0}, Landroidx/profileinstaller/Encoding;->readMeta(Ljava/io/FileInputStream;[B[B[Landroidx/profileinstaller/DexProfileData;)[Landroidx/profileinstaller/DexProfileData;

    move-result-object v0

    iput-object v0, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_7

    move-object v0, v3

    goto :goto_10

    :catch_7
    move-exception v0

    goto :goto_c

    :catch_8
    move-exception v0

    goto :goto_d

    :catch_9
    move-exception v0

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v9, v0

    goto :goto_a

    :cond_5
    :try_start_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_a
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    :try_start_f
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v9

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_f

    :goto_c
    iput-object v7, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    invoke-virtual {v2, v12, v0}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_f

    :goto_d
    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_f

    :goto_e
    const/16 v4, 0x9

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    :cond_7
    :goto_f
    move-object v0, v7

    :goto_10
    if-eqz v0, :cond_8

    move-object v3, v0

    :cond_8
    iget-object v0, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/tasks/zzad;

    iget-object v0, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    check-cast v0, [Landroidx/profileinstaller/DexProfileData;

    const-string v4, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    if-eqz v0, :cond_b

    iget-boolean v9, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    if-eqz v9, :cond_a

    :try_start_10
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_a

    :try_start_11
    invoke-virtual {v9, v11}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v9, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v9, v5, v0}, Landroidx/profileinstaller/Encoding;->transcodeAndWriteBody(Ljava/io/ByteArrayOutputStream;[B[Landroidx/profileinstaller/DexProfileData;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x5

    invoke-virtual {v2, v0, v7}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    iput-object v7, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_16

    :catch_a
    move-exception v0

    goto :goto_13

    :catch_b
    move-exception v0

    goto :goto_14

    :catchall_3
    move-exception v0

    move-object v5, v0

    goto :goto_11

    :cond_9
    :try_start_13
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_a

    goto :goto_15

    :goto_11
    :try_start_15
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto :goto_12

    :catchall_4
    move-exception v0

    :try_start_16
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v5
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_a

    :goto_13
    invoke-virtual {v2, v12, v0}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_15

    :goto_14
    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    :goto_15
    iput-object v7, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    goto :goto_16

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_16
    iget-object v0, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_c

    :goto_17
    const/4 v4, 0x0

    goto/16 :goto_24

    :cond_c
    iget-boolean v2, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    if-eqz v2, :cond_11

    :try_start_17
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v0, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    :try_start_19
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    :try_start_1a
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v9
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    if-eqz v9, :cond_e

    :try_start_1b
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x200

    new-array v0, v0, [B

    :goto_18
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_d

    const/4 v12, 0x0

    invoke-virtual {v4, v0, v12, v11}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_18

    :cond_d
    const/4 v11, 0x1

    invoke-virtual {v3, v11, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/io/IOException;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    :try_start_1c
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    :try_start_1d
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    :try_start_1e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    :try_start_1f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_d
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_c
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    iput-object v7, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    move v4, v11

    goto :goto_24

    :catchall_5
    move-exception v0

    goto :goto_25

    :catch_c
    move-exception v0

    goto :goto_21

    :catch_d
    move-exception v0

    const/4 v2, 0x6

    goto :goto_23

    :catchall_6
    move-exception v0

    move-object v4, v0

    goto :goto_1f

    :catchall_7
    move-exception v0

    move-object v5, v0

    goto :goto_1d

    :catchall_8
    move-exception v0

    move-object v9, v0

    goto :goto_1b

    :catchall_9
    move-exception v0

    move-object v11, v0

    goto :goto_19

    :cond_e
    :try_start_20
    new-instance v0, Ljava/io/IOException;

    const-string v11, "Unable to acquire a lock on the underlying file channel."

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    :goto_19
    if-eqz v9, :cond_f

    :try_start_21
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    goto :goto_1a

    :catchall_a
    move-exception v0

    :try_start_22
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_1a
    throw v11
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    :goto_1b
    if-eqz v5, :cond_10

    :try_start_23
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    goto :goto_1c

    :catchall_b
    move-exception v0

    :try_start_24
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_1c
    throw v9
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    :goto_1d
    :try_start_25
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    goto :goto_1e

    :catchall_c
    move-exception v0

    :try_start_26
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    throw v5
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    :goto_1f
    :try_start_27
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    goto :goto_20

    :catchall_d
    move-exception v0

    :try_start_28
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw v4
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_c
    .catchall {:try_start_28 .. :try_end_28} :catchall_5

    :goto_21
    :try_start_29
    invoke-virtual {v3, v6, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/io/IOException;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5

    :goto_22
    iput-object v7, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    goto/16 :goto_17

    :goto_23
    :try_start_2a
    invoke-virtual {v3, v2, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/io/IOException;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5

    goto :goto_22

    :goto_24
    if-eqz v4, :cond_12

    invoke-static {v8, v10}, Landroidx/profileinstaller/Encoding;->noteProfileWrittenFor(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    goto :goto_27

    :goto_25
    iput-object v7, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_e
    invoke-virtual {v3, v14, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/io/IOException;)V

    :goto_26
    const/4 v4, 0x0

    :cond_12
    :goto_27
    invoke-static {v1, v4}, Landroidx/profileinstaller/ProfileVerifier;->writeProfileVerification(Landroid/content/Context;Z)V

    goto/16 :goto_28

    :catch_f
    move-exception v0

    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    const/4 v12, 0x0

    invoke-static {v1, v12}, Landroidx/profileinstaller/ProfileVerifier;->writeProfileVerification(Landroid/content/Context;Z)V

    goto/16 :goto_28

    :cond_13
    const-string v3, "androidx.profileinstaller.action.SKIP_FILE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0xa

    if-eqz v3, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_19

    const-string v3, "EXTRA_SKIP_FILE_OPERATION"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WRITE_SKIP_FILE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v2, Lcom/google/android/gms/tasks/zzad;

    const/16 v3, 0x12

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v12, 0x0

    :try_start_2b
    invoke-virtual {v3, v0, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_2b} :catch_10

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/profileinstaller/Encoding;->noteProfileWrittenFor(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    invoke-virtual {v2, v4, v7}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    goto/16 :goto_28

    :catch_10
    move-exception v0

    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    goto/16 :goto_28

    :cond_14
    const-string v3, "DELETE_SKIP_FILE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-string v1, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    goto :goto_28

    :cond_15
    const-string v3, "androidx.profileinstaller.action.SAVE_PROFILE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, v4}, Landroid/os/Process;->sendSignal(II)V

    const-string v1, ""

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void

    :cond_16
    const-string v3, "androidx.profileinstaller.action.BENCHMARK_OPERATION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_19

    const-string v3, "EXTRA_BENCHMARK_OPERATION"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/tasks/zzad;

    const/16 v4, 0x12

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    const-string v0, "DROP_SHADER_CACHE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroidx/profileinstaller/Encoding;->deleteFilesRecursively(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0xe

    invoke-virtual {v3, v0, v7}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    return-void

    :cond_17
    const/16 v0, 0xf

    invoke-virtual {v3, v0, v7}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    return-void

    :cond_18
    const/16 v0, 0x10

    invoke-virtual {v3, v0, v7}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    :cond_19
    :goto_28
    return-void
.end method
