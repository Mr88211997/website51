<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>School Management Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 30px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input, select, textarea {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        textarea {
            height: 100px;
        }

        .submit-btn {
            display: block;
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .submit-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>School Management Form</h1>
        <form action="submit_form.php" method="POST">
            <!-- Student Information -->
            <div class="form-group">
                <label for="student-name">Student Name</label>
                <input type="text" id="student-name" name="student_name" required>
            </div>

            <div class="form-group">
                <label for="student-dob">Date of Birth</label>
                <input type="date" id="student-dob" name="student_dob" required>
            </div>

            <div class="form-group">
                <label for="student-grade">Grade</label>
                <select id="student-grade" name="student_grade" required>
                    <option value="">Select Grade</option>
                    <option value="1">Grade 1</option>
                    <option value="2">Grade 2</option>
                    <option value="3">Grade 3</option>
                    <option value="4">Grade 4</option>
                    <option value="5">Grade 5</option>
                    <option value="6">Grade 6</option>
                    <option value="7">Grade 7</option>
                    <option value="8">Grade 8</option>
                    <option value="9">Grade 9</option>
                    <option value="10">Grade 10</option>
                    <option value="11">Grade 11</option>
                    <option value="12">Grade 12</option>
                </select>
            </div>

            <!-- Parent/Guardian Information -->
            <div class="form-group">
                <label for="parent-name">Parent/Guardian Name</label>
                <input type="text" id="parent-name" name="parent_name" required>
            </div>

            <div class="form-group">
                <label for="parent-contact">Parent/Guardian Contact Number</label>
                <input type="tel" id="parent-contact" name="parent_contact" required>
            </div>

            <!-- Address -->
            <div class="form-group">
                <label for="address">Address</label>
                <textarea id="address" name="address" required></textarea>
            </div>

            <!-- Additional Information -->
            <div class="form-group">
                <label for="emergency-contact">Emergency Contact</label>
                <input type="tel" id="emergency-contact" name="emergency_contact" required>
            </div>

            <div class="form-group">
                <label for="special-needs">Special Needs (if any)</label>
                <textarea id="special-needs" name="special_needs"></textarea>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="submit-btn">Submit</button>
        </form>
    </div>

</body>
</html>
