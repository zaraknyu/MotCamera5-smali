.class public final Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mExtraJson:Ljava/lang/String;

.field public final mMcfMetadata:Lcom/motorola/camera/mcf/McfMetadata;

.field public final mOrientation:I

.field public final mPriority:I

.field public final mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

.field public final mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ILcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/McfMetadata;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mPriority:I

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mMcfMetadata:Lcom/motorola/camera/mcf/McfMetadata;

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mExtraJson:Ljava/lang/String;

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mOrientation:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "McfJpegRequestHolder{mSeqId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtraJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mExtraJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShotSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMcfMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mMcfMetadata:Lcom/motorola/camera/mcf/McfMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mOrientation:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
