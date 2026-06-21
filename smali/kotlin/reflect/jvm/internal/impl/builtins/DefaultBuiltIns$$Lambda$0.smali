.class public final Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;

.field public static final INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader$Companion;->$$INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader$Companion;

    const-class p0, Lkotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No BuiltInsLoader implementation was found. Please ensure that the META-INF/services/ is not stripped from your application and that the Java virtual machine is not running under a security manager"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    const-string v1, "DefaultBuiltIns"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->createBuiltInsModule()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
