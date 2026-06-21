.class public final Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bottomEdge:Landroidx/collection/internal/Lock;

.field public bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field public bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

.field public bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field public bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

.field public leftEdge:Landroidx/collection/internal/Lock;

.field public rightEdge:Landroidx/collection/internal/Lock;

.field public topEdge:Landroidx/collection/internal/Lock;

.field public topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field public topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

.field public topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field public topRightCornerSize:Lcom/google/android/material/shape/CornerSize;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    new-instance v0, Landroidx/collection/internal/Lock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Landroidx/collection/internal/Lock;

    new-instance v0, Landroidx/collection/internal/Lock;

    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Landroidx/collection/internal/Lock;

    new-instance v0, Landroidx/collection/internal/Lock;

    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Landroidx/collection/internal/Lock;

    new-instance v0, Landroidx/collection/internal/Lock;

    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Landroidx/collection/internal/Lock;

    return-void
.end method

.method public static compatCornerTreatmentSize(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 1

    instance-of v0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    instance-of v0, p0, Lcom/google/android/material/shape/CutCornerTreatment;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/material/shape/CutCornerTreatment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2

    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Landroidx/collection/internal/Lock;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Landroidx/collection/internal/Lock;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Landroidx/collection/internal/Lock;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Landroidx/collection/internal/Lock;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Landroidx/collection/internal/Lock;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Landroidx/collection/internal/Lock;

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Landroidx/collection/internal/Lock;

    iput-object p0, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Landroidx/collection/internal/Lock;

    return-object v0
.end method
