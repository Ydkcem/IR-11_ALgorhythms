package IR11;
import IR11.Exam.AlgorhythmRes;
import IR11.Exam.workingAlgorhythm;
import IR11.Exam.AlgorhythmRes;
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ApplicationTests {
    @Test
    void contextLoads() {
    }

    @Test
    void Laba2Test()
    {
        IR11.Lab2.Calculator calculator = new IR11.Lab2.Calculator();
        
        assertEquals(Float.MAX_VALUE, calculator.CalculateFormula(0));
        assertEquals(0, calculator.CalculateFormula(0.5f));
        assertEquals(0.05f, calculator.CalculateFormula(2));
    }
    
    @Test
    void Laba3Test()
    {
        IR11.Lab3.Calculator calculator = new IR11.Lab3.Calculator(new int[]{
            2, 5, 0, 6, 4, 2, 9, 2, 0, 4, 6, 4, 8, 7, 0, 7, 4, 1, 8, 2, 4, 4,
            8, 8, 8, 0, 0, 2, 6, 1, 3, 0, 2, 9, 3, 1, 5, 7, 8, 7, 3, 3, 2, 9,
            8, 3, 2, 3, 3, 6, 9, 4, 0, 4, 8, 7, 2, 0, 1, 2, 3, 7, 7, 2, 6, 1,
            2, 2, 6, 4, 4, 4, 6, 6, 2, 2, 8, 0, 0, 5, 0, 9, 3, 0, 4, 3, 3, 1,
            9, 6, 4, 4, 0, 8, 4, 3, 9, 0, 3, 8
        });
        assertEquals(2, calculator.FindSequenceLength());

        calculator = new IR11.Lab3.Calculator(new int[]{
            7, 9, 0, 2, 2, 4, 4, 0, 6, 0, 1, 8, 4, 5, 9, 2, 9, 4, 1, 5, 4, 2,
            5, 1, 6, 7, 9, 9, 2, 9, 4, 3, 4, 3, 2, 1, 6, 3, 4, 8, 0, 8, 3, 4,
            3, 0, 2, 9, 2, 9, 1, 0, 4, 9, 5, 3, 9, 6, 1, 1, 6, 3, 0, 9, 2, 0,
            8, 3, 7, 6, 4, 6, 0, 0, 0, 5, 9, 5, 0, 3, 5, 9, 9, 9, 0, 8, 1, 8,
            3, 2, 7, 5, 5, 3, 0, 8, 3, 6, 2, 7
        });
        assertEquals(3, calculator.FindSequenceLength());
        
        calculator = new IR11.Lab3.Calculator(new int[]{
            6, 8, 4, 0, 9, 6, 8, 0, 9, 7, 3, 7, 6, 4, 7, 4, 1, 2, 1, 4, 5, 6,
            9, 7, 1, 4, 5, 0, 2, 3, 7, 7, 7, 3, 2, 3, 8, 2, 0, 8, 2, 5, 0, 1,
            6, 2, 0, 9, 1, 3, 7, 6, 8, 4, 1, 6, 5, 0, 8, 4, 7, 8, 5, 6, 4, 9,
            7, 4, 7, 7, 9, 5, 1, 8, 0, 1, 1, 5, 4, 8, 6, 3, 1, 0, 5, 2, 1, 5,
            3, 7, 7, 7, 6, 7, 9, 5, 7, 8, 0, 6
        });
        assertEquals(1, calculator.FindSequenceLength());
    }
    
    @Test
    void testExam1()
    {
        assertEquals(0.023255813866853714, workingAlgorhythm.Function(7));
    }
    
    @Test
    void testExam2()
    {
        AlgorhythmRes fr = new AlgorhythmRes();
        float[] args = new float[]{3f, 4f, 5f};
        fr.setUpArguments(args);
        assertEquals("[0.06666667, 0.045454547, 0.03448276]", fr.Function());
    }
}
