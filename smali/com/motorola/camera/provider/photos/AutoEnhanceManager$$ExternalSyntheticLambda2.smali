.class public final synthetic Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/io/File;

.field public final synthetic f$4:Ljava/util/concurrent/Future;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/CompletableFuture;JI)V
    .locals 0

    iput p8, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->f$3:Ljava/io/File;

    iput-object p5, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->f$4:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->f$3:Ljava/io/File;

    iget-object p0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->f$4:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    invoke-static {v2}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    sget-object v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->f$3:Ljava/io/File;

    iget-object p0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;->f$4:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    invoke-static {v2}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    sget-object v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    iget-object v0, v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
