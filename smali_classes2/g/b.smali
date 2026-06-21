.class public abstract Lg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final c:Landroidx/compose/runtime/snapshots/StateObjectImpl;

.field public final d:I

.field public e:I

.field public final f:Ljava/util/ArrayList;

.field public g:Lg/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lg/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "%1$d 0 obj\r\n<</AP <</N %2$d 0 R>> /BS <</S /S /Type /Border /W %3$.6f >> /C [%4$s] /CA %5$.6f /CreationDate (%6$s) /F 4 /InkList \t[%7$s] /M (%6$s) /Rect %8$s /Subtype /Ink /Type /Annot>>\r\nendobj\r\n"

    sput-object v0, Lg/b;->i:Ljava/lang/String;

    const-string v0, "%1$d 0 obj\r\n<</AP <</N %2$d 0 R>> /CA %3$.6f /CreationDate (%4$s) /F 4 /M (%4$s) /Rect %5$s /Name /%6$s /Subtype /Stamp /Type /Annot>>\r\nendobj\r\n"

    sput-object v0, Lg/b;->j:Ljava/lang/String;

    const-string v0, "%1$d 0 obj\r\n<</Length %2$d/Type/XObject/Subtype/Form/FormType 1/BBox%3$s/Matrix[ 1 0 0 1 %4$s]/Resources<</ProcSet[/PDF]/ExtGState<</R0 <</Type/ExtGState/AIS false/BM/Normal/ca %5$.6f/CA %5$.6f>>>>>>>>stream\r\n"

    sput-object v0, Lg/b;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Matrix;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/b;->a:Landroid/graphics/Matrix;

    iput-object p2, p0, Lg/b;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    check-cast p3, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    iput-object p3, p0, Lg/b;->c:Landroidx/compose/runtime/snapshots/StateObjectImpl;

    iput p4, p0, Lg/b;->d:I

    sget-object p1, Lg/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iput p1, p0, Lg/b;->e:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/b;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public abstract a(Lc/x;Lc/v1;Landroid/graphics/Matrix;Ljava/lang/String;I)Lg/d;
.end method

.method public abstract c()Z
.end method
