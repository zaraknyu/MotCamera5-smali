.class public Lcom/google/android/gms/tasks/zzr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/storage/MediaFile;
.implements Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;


# static fields
.field public static sInstance:Lcom/google/android/gms/tasks/zzr;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;

.field public zzb:Ljava/lang/Object;

.field public zzc:Z


# direct methods
.method public static -$$Nest$manimateFocus(Lcom/google/android/gms/tasks/zzr;Z)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFacesDetected:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FACE_DETECT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiCompCallback;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-nez v0, :cond_1

    const/16 v0, 0x258

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->animateFocusArea(IZ)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v3, 0xc8

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    return-void

    .line 2
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    .line 4
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;->TYPE_PHOTO:Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;-><init>(Landroid/content/Context;Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;)V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    .line 9
    new-instance p1, Lcom/motorola/camera/provider/photos/PhotosPreloader$serviceConnection$1;

    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    const-string v0, "externalUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/collection/LongSparseArray;Lcom/tinder/StateMachine;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/saving/FileName;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile$default(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;)V
    .locals 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/CameraIntentReceiver$1;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/CameraIntentReceiver$1;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ZLjava/util/List;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    .line 20
    iput-boolean p2, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    .line 21
    iput-object p3, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Z)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public static checkInstantiable(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Abstract classes can\'t be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nSee "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "r8-abstract-class"

    const-string v1, "https://github.com/google/gson/blob/main/Troubleshooting.md#"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/google/android/gms/tasks/zzr;
    .locals 3

    const-class v0, Lcom/google/android/gms/tasks/zzr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/tasks/zzr;->sInstance:Lcom/google/android/gms/tasks/zzr;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/tasks/zzr;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/google/android/gms/tasks/zzr;-><init>(I)V

    sput-object v1, Lcom/google/android/gms/tasks/zzr;->sInstance:Lcom/google/android/gms/tasks/zzr;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/gms/tasks/zzr;->sInstance:Lcom/google/android/gms/tasks/zzr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static readCache(Ljava/io/File;)Landroid/util/LongSparseArray;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    const/16 v2, 0x1f4

    if-ne v2, p0, :cond_2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const v4, 0x98a8f4

    if-ne v4, p0, :cond_1

    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-lez v3, :cond_1

    new-instance p0, Landroid/util/LongSparseArray;

    invoke-direct {p0, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;

    invoke-direct {v6, v1}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;-><init>(Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :cond_1
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Version mismatch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_0
    move-object v1, v0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :catch_1
    :goto_2
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static writeCache(Ljava/io/File;Landroid/util/LongSparseArray;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-lez p0, :cond_1

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const v3, 0x98a8f4

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->-$$Nest$mwrite(Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;Ljava/io/DataOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-object v1, v2

    goto :goto_2

    :cond_0
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "count must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :catch_1
    :goto_2
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return v0
.end method


# virtual methods
.method public activeHoverEvent-0FcD4WY(J)Z
    .locals 6

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/tinder/StateMachine;

    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    iget-wide v4, v4, Landroidx/compose/ui/input/pointer/PointerInputEventData;->id:J

    invoke-static {v4, v5, p1, p2}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    if-eqz v3, :cond_2

    iget-boolean p0, v3, Landroidx/compose/ui/input/pointer/PointerInputEventData;->activeHover:Z

    return p0

    :cond_2
    return v1
.end method

.method public asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public asTemporaryFileMediaFile()Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    instance-of v0, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mCafTimeout:Z

    return-void
.end method

.method public delete()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v0, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    iput-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-boolean v0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    return-void

    :catchall_1
    move-exception v1

    goto :goto_2

    :goto_1
    :try_start_2
    iput-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    throw v1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    const-string v2, "c1"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "c2"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p1

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p2

    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v2, :cond_2

    instance-of v2, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides$$Lambda$3;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides$$Lambda$3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1;

    invoke-virtual {p0, p1, p2, v0, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1;->areTypeParametersEquivalent(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;ZLkotlin/jvm/functions/Function2;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public finish()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzr;->delete()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    :cond_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    goto :goto_2

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    throw v1

    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public get(Lcom/google/gson/reflect/TypeToken;Z)Lcom/google/gson/internal/ObjectConstructor;
    .locals 8

    iget-object v0, p1, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    iget-object p1, p1, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_17

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, v3}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda8;-><init>(Ljava/lang/reflect/Type;I)V

    goto :goto_0

    :cond_0
    const-class v1, Ljava/util/EnumMap;

    if-ne p1, v1, :cond_1

    new-instance v1, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, v2}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda8;-><init>(Ljava/lang/reflect/Type;I)V

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/google/gson/internal/Streams;->getFilterResult(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :catch_0
    move-object v1, v4

    goto :goto_2

    :cond_3
    :try_start_0
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v5, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v4

    goto :goto_1

    :catch_1
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed making constructor \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/gson/internal/reflect/ReflectionHelper;->constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getInaccessibleTroubleshootingSuffix(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_4

    new-instance v1, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v5, v2}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    new-instance v2, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/16 v5, 0x15

    invoke-direct {v2, v5, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v0, 0x11

    invoke-direct {v4, v0}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    goto/16 :goto_5

    :cond_6
    const-class v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v0, 0x12

    invoke-direct {v4, v0}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    goto/16 :goto_5

    :cond_7
    const-class v0, Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v0, 0x13

    invoke-direct {v4, v0}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    goto/16 :goto_5

    :cond_8
    const-class v0, Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v0, 0x14

    invoke-direct {v4, v0}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    goto/16 :goto_5

    :cond_9
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-class v1, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/google/gson/internal/Streams;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_c

    :goto_3
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v0, 0xc

    invoke-direct {v4, v0}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    goto :goto_5

    :cond_c
    :goto_4
    const-class v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v0, 0xd

    invoke-direct {v4, v0}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    goto :goto_5

    :cond_d
    const-class v0, Ljava/util/TreeMap;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v0, 0xe

    invoke-direct {v4, v0}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    goto :goto_5

    :cond_e
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v0, 0xf

    invoke-direct {v4, v0}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    goto :goto_5

    :cond_f
    const-class v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v0, 0x10

    invoke-direct {v4, v0}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    :cond_10
    :goto_5
    if-eqz v4, :cond_11

    return-object v4

    :cond_11
    invoke-static {p1}, Lcom/google/android/gms/tasks/zzr;->checkInstantiable(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0, v3}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_12
    const-string v0, "Unable to create instance of "

    if-nez p2, :cond_13

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; Register an InstanceCreator or a TypeAdapter for this type."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_13
    iget-boolean p0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    if-eqz p0, :cond_14

    new-instance p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/16 p2, 0x16

    invoke-direct {p0, p2, p1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    goto :goto_6

    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_15

    const-string p1, " Or adjust your R8 configuration to keep the no-args constructor of the class."

    invoke-static {p0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_15
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda0;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    move-object p0, p1

    :goto_6
    return-object p0

    :cond_16
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_17
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "fromFile(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public getWriteFd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const-string/jumbo v0, "rw"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzr;->openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "isFinished is true"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public getWriteFileDescriptor()Ljava/io/FileDescriptor;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    const-string v0, "getFD(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const-string/jumbo v0, "rw"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzr;->openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const-string v0, "getFileDescriptor(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "isFinished is true"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public isFinished()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-boolean p0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    return p0

    :pswitch_0
    iget-boolean p0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3

    const-string v0, "Failed to open "

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    :try_start_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "getInstance(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-static {p0, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-static {p0, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public openReadParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "r"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzr;->openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "isFinished is false"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzr;->cancel()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-nez v2, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isShutterButtonMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public toMemento()Lcom/motorola/camera/storage/MediaFile$Memento;
    .locals 9

    iget v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lcom/motorola/camera/storage/MediaFile$Memento;

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/storage/MediaFile$Memento;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :pswitch_0
    new-instance v2, Lcom/motorola/camera/storage/MediaFile$Memento;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/net/Uri;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/storage/MediaFile$Memento;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InternalFileMediaFile("

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ExternalUriMediaFile(externalUri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isFinished="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", writeParcelFileDescriptor="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/tasks/zzh;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public zzb(Lcom/google/android/gms/tasks/zzw;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/zzh;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zzh;->zzd(Lcom/google/android/gms/tasks/zzw;)V

    goto :goto_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
